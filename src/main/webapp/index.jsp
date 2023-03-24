<!DOCTYPE html>
<html>
<head>
    <title>视频实时监测</title>
</head>
<body>
<h1>视频实时监测</h1>
<video id="video" width="640" height="480" autoplay></video>
<script>
    // 获取video元素
    var video = document.getElementById('video');

    // 请求访问用户摄像头和麦克风
    navigator.mediaDevices.getUserMedia({video: true, audio: false})
        .then(function(stream) {
            // 将媒体流绑定到video元素上
            video.srcObject = stream;
        })
        .catch(function(err) {
            console.log('获取媒体流失败：' + err);
        });
</script>
</body>
</html>
