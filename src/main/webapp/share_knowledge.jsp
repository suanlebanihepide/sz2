<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/1
  Time: 20:02
  化学小知识分享页面
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>化学知识科普</title>
<%--    加载Bootstrap相关CSS jQuery JS文件--%>
    <link rel="stylesheet" href="/sz/css/bootstrap/css/bootstrap.min.css">
    <script src="/sz/css/bootstrap/js/jquery.min.js"></script>
    <script src="/sz/css/bootstrap/js/bootstrap.min.js"></script>
</head>
<%--修改背景图片--%>
<body style="background-image: url(/sz/images/background.png)">
<br><br><br><br>
<%--加载网页导航条--%>
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

<%--利用列表组合在网页上显示化学小知识的相关信息--%>
<div class="container">
    <div class="panel panel-default">

        <div class="panel-body">
            <h2 style="font-weight: bold">分享 </h2><span class="text-right ">2019年11月21日</span>
            <hr>

            <img src="/sz/images/knowledge_page/1.jpg" class="col-md-5" height="450" alt="">
            <h1>神秘的鬼火</h1>
            <span style=" font-size: 20px; font-family: Arial">
            在古代，科技还没有那么发达，人们还处于信奉神鬼一说。半夜走在墓地里恐怕不是给山贼撸走，是给那些鬼火吓到“鼻哥隆都无肉”。在墓地里会出现一种青绿色火焰，一闪一闪，忽隐忽现，十分诡异。许多人遇到这种情况，都会拔腿就跑，怎么这火还比较粘人，
            一直跟随着你，真所谓忠心耿耿吖！古人认为是鬼魂在作祟，故称它为鬼火。那么鬼火到底是怎么回事呢？

            鬼火实际上是磷火，是一种很普通的自然现象。它是这样形成的：人体内部，除绝大部分是由碳、氢、氧三种元素组成外，还含有其他一些元素，如磷、硫、铁等。人体的骨骼里含有较多的磷化钙。人死了，躯体里埋在地下腐烂，发生着各种化学反应。磷由磷酸根状态转化为磷化氢。磷化氢是一种气体物质，燃点很低，
            在常温下与空气接触便会燃烧起来（Ca3P2+6H2O===2PH3+3Ca(OH)2, PH3+2O2===H3PO4)。磷化氢产生之后沿着地下的裂痕或孔洞冒出到空气中燃烧发出蓝色的光，这就是磷火，也就是人们所说的“鬼火”。

            鬼火多见于盛夏之夜,因为盛夏天气炎热，温度很高，化学反应速度加快，磷化氢易于形成。由于气温高，磷化氢也易于自燃。
        </span>

        </div>

    </div>
    <br>

    <div class="panel panel-default">

        <div class="panel-body">
            <h2 style="font-weight: bold">分享</h2><span class="text-right ">2019年11月21日</span>
            <hr>

            <img src="/sz/images/knowledge_page/2.jpg" class="col-md-5" height="374" alt="">
            <h1>诸葛亮第四次释放孟获</h1>
            <span style=" font-size: 20px; font-family: Arial">
            大家都知道诸葛亮三顾茅庐的故事。可知道诸葛亮第四次释放孟获时发生了是什么事情呢？

当时秃龙大王扬言利用毒泉消灭汉军，其中有一个是“哑泉”，汉将先锋王平率人探路时因当时天气炎热，人马争先恐后地误喝了哑泉之水，回到大营后士兵不会说话，危在旦夕，诸葛亮当时也无计可施，幸好当地一老头指点迷津，让汉军将士喝了万安溪安乐泉水方转危为安。这可是神丹妙药啊，喝下简直老虎都可以打死几只。这要是什么成分呢？

原来哑泉中含大量CuSO4，人喝了含有铜盐的水就会中毒，引起说话不清、呕吐腹泻最后导致虚脱、痉挛而死，而万安溪安乐泉水中含有较多的碱，其中的OH-能与哑泉中的Cu2+结合氢氧化铜沉淀，这种沉淀不易被人体吸收，所以对人体不会造成伤害。
        </span>

        </div>
    </div>

    <div class="panel panel-default">

        <div class="panel-body">
            <h2 style="font-weight: bold">分享</h2><span class="text-right ">2019年11月21日</span>
            <hr>

            <img src="/sz/images/knowledge_page/3.jpg" class="col-md-5" height="374" alt="">
            <h1>啤酒喷泉</h1>
            <span style=" font-size: 20px; font-family: Arial">
           在炎热的夏天，人们经常喝啤酒解渴，打开啤酒瓶盖时经常看到啤酒向外喷沫，有时还像喷泉一样喷出来，这是为什么呢？一般来说，每升啤酒中都含有5克左右的二氧化碳。在制造啤酒时，通过一定压力把它灌进瓶里。因此，每瓶啤酒里都溶解了一定的二氧化碳，而瓶里是留有一定空隙的，打开时，只要轻轻摇晃，气体就形成泡沫从啤酒瓶里溢出来。
        国外的一些专家经过近十年观察研究发现，啤酒的泡沫与麦芽有一定的关系。酿造啤酒的重要原料是大麦芽，而大麦在成长、收割、储藏期间一般是多雨的季节，大麦一旦受潮，极容易受到各种微生物的污染，使几十种霉菌得以生殖，用它来酿造啤酒便产生了一些泡沫。固然，这些霉菌对人体没有什么危害，有的还是有益的。啤酒具有很高的营养价值，含有17种人体所需的氨基酸和12种维生素，产生大量热量，有“液体面包”的美称。
        </span>

        </div>
    </div>
</div>

</body>
</html>
