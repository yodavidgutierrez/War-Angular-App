<%
 String servername = request.getServerName().replace("/", "");
 int port = request.getLocalPort();

String baseUrl = request.getScheme()+"://"+servername;

if(port != 80){
    baseUrl+=":"+port;
}

baseUrl+=request.getContextPath();
%>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>soaint sgd web</title>
    <base href="<%=baseUrl%>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link rel="icon" type="image/x-icon" href="<%=baseUrl%>/assets/layout/images/favicon.png">
    <link id="layout-css" rel="stylesheet" type="text/css" href="<%= baseUrl%>/assets/layout/css/layout-indigo.css">
    <!--<script type="text/javascript" src="assets/js/worker-container.js"></script>-->
    <script type="text/javascript" src="<%= baseUrl%>/assets/js/ckeditor.js"></script>
    <script type="text/javascript" src="<%= baseUrl%>/assets/js/pdfobject.js"></script>
    <!--<script type="text/javascript" src="https://cdn.ckeditor.com/4.9.2/full-all/ckeditor.js"></script>-->
    <script>
        CKEDITOR.config.forcePasteAsPlainText = true;
    </script>
    <link href="<%= baseUrl%>/styles.501dce8498ba2721a202.bundle.css" rel="stylesheet"/>
   </head>
   <body>
   <script>
       window.host = '<%=System.getProperty("apigateway.host")%>';
       window.ecmHost = '<%=System.getProperty("ecm-api-endpoint")%>';
       window.base_url='<%=baseUrl%>';
       window.digitalizacionUrl = '<%=System.getProperty("digitalizacion-url")%>';
       window.dashBuilderUrl = '<%=System.getProperty("dashbuilder-url")%>';
       window.toolboxOrigin = '<%=System.getProperty("toolbox-url")%>';
   </script>
   <app-root>
       <div class="splash-screen">
           <div class="splash-container">
               <div class="logo"></div>
               <div class="load-bar">
                   <div class="bar"></div>
                   <div class="bar"></div>
                   <div class="bar"></div>
               </div>
           </div>
       </div>
   </app-root>
   <script type="text/javascript" src="<%= baseUrl%>/inline.31e1fb380eb7cf3d75b1.bundle.js"></script>
   <script type="text/javascript" src="<%= baseUrl%>/polyfills.ea7c58db40e60a9296ad.bundle.js"></script>
   <script type="text/javascript" src="<%= baseUrl%>/scripts.cc2c039ed7a62ffd7ba0.bundle.js"></script>
   <script type="text/javascript" src="<%= baseUrl%>/vendor.863502a1a0cad60d6fb3.bundle.js"></script>
   <script type="text/javascript" src="<%= baseUrl%>/main.f62f53616053d4eea166.bundle.js"></script>
   </body>
</html>
