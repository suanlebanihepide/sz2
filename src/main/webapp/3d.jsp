<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/11
  Time: 22:39
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>化学物质展示</title>
    <link rel="stylesheet" href="/sz/css/bootstrap/css/bootstrap.min.css">


    <style>
        body {
            margin: 0px;
            overflow: hidden;
        }

    </style>
</head>
<body style="background-color: rgb(0,0,0)">

<script src="/sz/js/three.js"></script>
<script src="/sz/js/OrbitControls.js"></script>
<script src="/sz/js/OBJLoader.js"></script>
<script src="/sz/js/MTLLoader.js"></script>
<script src="/sz/js/WebGL.js"></script>

<div>

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
                            <li><a href="test_page1.html" data-tab="tab-firefox"><span style="font-size: 18px">化学小测试</span></a></li>
                            <li><a href="/sz/user/share_knowledge" data-tab="tab-firefox"><span style="font-size: 18px">化学知识科普</span></a></li>
                            <li><a href="/sz/user/share_video" data-tab="tab-firefox"><span style="font-size: 18px">趣味分享</span></a></li>
                        </ul>
                    </li>

                    <li><a href="/sz/user/about" class="navbar-brand">关于我们&nbsp&nbsp&nbsp&nbsp</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <br><br><br>
    <div class="col-md-offset-2 col-md-8 " style="color: white ;font-size: 20px">

        ${information};
    </div>

    <div>

        <script>
            var container,
                camera,
                scene,
                renderer,
                controls,
                clock;

            function init() {
                container = document.createElement('div');
                container.id = 'container';
                document.body.appendChild(container);

                renderer = new THREE.WebGLRenderer({
                    antialias: true
                });
                renderer.setPixelRatio(window.devicePixelRatio);
                renderer.setSize(window.innerWidth, window.innerHeight);
                container.appendChild(renderer.domElement);

                scene = new THREE.Scene();
                var gridHelper = new THREE.GridHelper(100, 10, 0x121c35, 0x121c35);
                scene.add(gridHelper);

                scene.add(new THREE.HemisphereLight(0xffffbb, 0x080820, 2));

                camera = new THREE.PerspectiveCamera(45, window.innerWidth / window.innerHeight, 1, 200);
                camera.position.set(0, 50, 50);

                controls = new THREE.OrbitControls(camera, container);
                controls.autoRotate = true;

                new THREE.MTLLoader().load('/sz/model/${id}.mtl', function (materials) {
                    materials.preload();
                    new THREE.OBJLoader().setMaterials(materials).load('/sz/model/${id}.obj', function (object) {
                        scene.add(object);
                        animate();
                    });

                });

                window.addEventListener('resize', onWindowResize, false);
            };

            function onWindowResize() {
                var w = window.innerWidth,
                    h = window.innerHeight;
                renderer.setSize(w, h);
                camera.aspect = w / h;
                camera.updateProjectionMatrix();
            }

            function animate() {
                requestAnimationFrame(animate);
                render();
            }

            function render() {
                controls.update();
                renderer.render(scene, camera);
            }

            init();
        </script>
    </div>

</div>

</body>

</html>
