<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/10/11
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script type="text/javascript">
      window.onload = function () {
          // 1.获取a节点，并为其添加onclick响应函数
          document.getElementsByTagName("a")[0].onclick = function () {
              // 3.创建一个XMLHttpResponse对象
              var request = new XMLHttpRequest();
              // 4.准备发送请求的数据：url
              var url = this.href;
              var method = "GET";
              // 5.调用XMLHttpRequest对象的 open()方法
              request.open(method,url);
              // 6.调用XMLHttpRequest对象的 send()方法
              request.send(null);
              // 7.为XMLHttpRequest对象添加onreadystatechange 响应函数
              request.onreadystatechange = function () {
                  // 8.判断响应是否完成：XMLHttpRequest对象的readyStatue属性值为4的时候
                  if (request.readyState == 4){
                      // 9.再判断响应是否可用：XMLHttpRequest对象status属性值为200；304表示未修改
                      if (request.status == 200 || request.status == 304){
                          // 10.打印响应结果：responseText
                          alert(request.responseText);
                      }
                  }
              }
              // 2.取消a节点的默认行为
              return false;
          }
      }
    </script>
  </head>
  <body>
    <a href="hello.txt">helloAjax</a>
  </body>
</html>
