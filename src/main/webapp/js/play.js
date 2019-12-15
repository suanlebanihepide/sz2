(function () {
    "use strict";

    var container,
        camera,
        scene,
        renderer,
        controls,
        clock;

    var init = function () {
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

        new THREE.MTLLoader().load('C6H6.mtl', function (materials) {
            materials.preload();
            new THREE.OBJLoader().setMaterials(materials).load('C6H6.obj', function (object) {
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

});
