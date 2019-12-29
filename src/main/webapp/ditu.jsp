<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/14
  Time: 23:58
  该页面主要是化学物质地图介绍，提供相关的化学有机物和化学物质信息
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>化学物质展示</title>
    <%--    导入Boostrap的相关CSS jQuery JS等文件--%>
    <link rel="stylesheet" href="/sz/css/bootstrap/css/bootstrap.min.css">
    <script src="/sz/css/bootstrap/js/jquery.min.js"></script>

    <script src="/sz/css/bootstrap/js/bootstrap.min.js"></script>
    <%--   设置页面中化学物质地图显示的结点的外观形状信息--%>
    <style>
        .node {
            cursor: pointer;

        }

        .node circle {
            fill: #fff;
            stroke: steelblue;
            stroke-width: 1.5px;
        }

        .node text {
            font: 20px sans-serif;
        }

        .link {
            fill: none;
            stroke: #ccc;
            stroke-width: 3px;
        }

        .tree {
            width: 1100px;
            height: 600px;
            margin: 0 auto;

            background-image: url("/sz/images/main_map.png");
        }

        .tree svg {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body style="background-image: url(/sz/images/background.png)">
<%--加载导航条--%>
<nav class="navbar  navbar-inverse navbar-fixed-top">

    <div class="navbar-header">
        <a class="navbar-brand" href=""><span style="font-size: 25px">化学妙妙屋</span></a>
    </div>
    <div class="container">
        <div class="collapse navbar-collapse" id="navbar-menu">
            <ul class="nav navbar-nav ">

                <li><a href="/sz/user/home" class="navbar-brand">首页&nbsp&nbsp&nbsp&nbsp</a></li>
                <li>
                    <a href="/sz/user/lab" class="navbar-brand">化学实验室&nbsp&nbsp&nbsp&nbsp</a>
                </li>

                <li class="dropdown ">
                    <a href="#" class="navbar-brand dropdown-toggle" role="button" aria-haspopup="true" data-toggle="dropdown">
                        化学物质 &nbsp&nbsp&nbsp&nbsp<span class="caret"></span> </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="/sz/user/ditu" data-tab="tab-chrome"> <span style="font-size: 18px">化学有机物3D结构展示</span> </a></li>
                        <li><a href="/sz/user/ditu" data-tab="tab-firefox"><span style="font-size: 18px">化学物质展示</span></a></li>
                    </ul>
                </li>

                <li class="dropdown ">
                    <a href="class.jsp" class=" navbar-brand dropdown-toggle" role="button" aria-haspopup="true"
                       data-toggle="dropdown">
                        化学小课堂&nbsp&nbsp&nbsp&nbsp <span class="caret"></span></a>
                    <ul class="dropdown-menu  " role="menu">
                        <li><a href="/sz/user/show_qicai" data-tab="tab-chrome"><span style="font-size: 18px">化学器材展示</span></a></li>
                        <li><a href="/sz/user/exam" data-tab="tab-firefox"><span style="font-size: 18px">化学小测试</span></a></li>
                        <li><a href="/sz/user/share_knowledge" data-tab="tab-firefox"><span style="font-size: 18px">化学知识科普</span></a></li>
                        <li><a href="/sz/user/share_video" data-tab="tab-firefox"><span style="font-size: 18px">趣味分享</span></a></li>
                    </ul>
                </li>

                <li><a href="/sz/user/about" class="navbar-brand">关于我们&nbsp&nbsp&nbsp&nbsp</a></li>
            </ul>
        </div>
    </div>
</nav>
<br><br><br><br>

<div class="tree panel panel-default container" id="tree">
    <h1>化学物质地图</h1>
</div>
<%--利用NodeJS建立化学物质地图，类似于一个树状结构的地图，通过点击对应的叶子节点，显示不用化学物质的3D模型--%>

<script type="text/javascript" src="/sz/js/d3.min.js"></script>
<script type="text/javascript">

    var json = [
        {
            "name": "化学物质结构展示",
            "parent": "null",
            "children": [
                {
                    "name": "化学有机物",
                    "parent": "化学物质结构展示",
                    "children": [
                        {"name": "C2H4", "parent": "化学有机物"},

                        {"name": "C6H6", "parent": "化学有机物"},
                        {"name": "C6H8", "parent": "化学有机物"},
                        {"name": "TNT", "parent": "化学有机物"}
                    ]
                },

                {
                    "name": "化学物质",
                    "parent": "化学物质结构展示",
                    "children": [
                        {"name": "Ag", "parent": "化学物质"},
                        {"name": "Au", "parent": "化学物质"},
                        {"name": "Cu", "parent": "化学物质"},
                        {"name": "Fe", "parent": "化学物质"}

                    ]
                }
            ]
        }
    ];


    var margin = [10, 120, 10, 120],
        width = document.getElementById("tree").offsetWidth,
        height = document.getElementById("tree").offsetHeight;

    var i = 0,
        duration = 1000,
        root;

    var tree = d3.layout.tree()
        .size([height, width]);

    var diagonal = d3.svg.diagonal()
        .projection(function (d) {
            return [d.y, d.x];
        });

    var zoom = d3.behavior.zoom().scaleExtent([0.2, 100]).on("zoom", zoomed);//添加放大缩小事件

    var svg = d3.select("body").select("#tree").append("svg")
        .call(zoom)//给svg绑定zoom事件
        .append("g")
        .call(zoom)//给g绑定zoom事件
        .append("g")
        .attr("transform", "translate(" + margin[3] + "," + margin[0] + ")");


    root = json[0];
    root.x0 = height / 8;
    root.y0 = width / 4;

    function collapse(d) {
        if (d.children) {
            d._children = d.children;
            d._children.forEach(collapse);
            d.children = null;
        }
    }

    root.children.forEach(collapse);
    update(root);

    function zoomed() {
        svg.attr("transform",
            "translate(" + zoom.translate() + ")" +
            "scale(" + zoom.scale() + ")"
        );
    }

    function update(source) {

        // Compute the new tree layout.
        var nodes = tree.nodes(root).reverse(),
            links = tree.links(nodes);

        // Normalize for fixed-depth.
        nodes.forEach(function (d) {
            d.y = d.depth * 180;
        });

        // Update the nodes…
        var node = svg.selectAll("g.node")
            .data(nodes, function (d) {
                return d.id || (d.id = ++i);
            });

        // Enter any new nodes at the parent's previous position.
        var nodeEnter = node.enter().append("g")
            .attr("class", "node")
            .attr("transform", function (d) {
                return "translate(" + source.y0 + "," + source.x0 + ")";
            })
            .on("click", click);

        nodeEnter.append("circle")
            .attr("r", 10)
            .style("fill", function (d) {
                return d._children ? "lightsteelblue" : "#fff";
            });

        nodeEnter.append("text")
            .attr("x", function (d) {
                return d.children || d._children ? -10 : 10;
            })
            .attr("dy", ".35em")
            .attr("text-anchor", function (d) {
                return d.children || d._children ? "end" : "start";
            })
            .text(function (d) {
                return d.name;
            })
            .style("fill-opacity", 100);

        var nodeUpdate = node.transition()
            .duration(duration)
            .attr("transform", function (d) {
                return "translate(" + d.y + "," + d.x + ")";
            });

        nodeUpdate.select("circle")
            .attr("r", 8)
            .style("fill", function (d) {
                return d._children ? "lightsteelblue" : "#fff";
            });

        nodeUpdate.select("text")
            .style("fill-opacity", 10);

        var nodeExit = node.exit().transition()
            .duration(duration)
            .attr("transform", function (d) {
                return "translate(" + source.y + "," + source.x + ")";
            })
            .remove();

        nodeExit.select("circle")
            .attr("r", 8);

        nodeExit.select("text")
            .style("fill-opacity", 10);

        var link = svg.selectAll("path.link")
            .data(links, function (d) {
                return d.target.id;
            });

        link.enter().insert("path", "g")
            .attr("class", "link")
            .attr("d", function (d) {
                var o = {x: source.x0, y: source.y0};
                return diagonal({source: o, target: o});
            });

        link.transition()
            .duration(duration)
            .attr("d", diagonal);

        link.exit().transition()
            .duration(duration)
            .attr("d", function (d) {
                var o = {x: source.x, y: source.y};
                return diagonal({source: o, target: o});
            })
            .remove();

        nodes.forEach(function (d) {
            d.x0 = d.x;
            d.y0 = d.y;

        });
    }
    //当点击到叶子结点时的响应函数，加载3D模型重新打开一个新的页面进行显示
    function click(d) {

        var a = d.name;
        var b = "../3D/"
        var c = ".html";


        if (d.children) {

            d._children = d.children;
            d.children = null;

        } else {
            d.children = d._children;
            d._children = null;
        }
        if (d._children == null && d.children == null) {
            var t = d.name;
            window.open("/sz/user/3d/"+t);

        }
        update(d);
    }

</script>


</body>
</html>
