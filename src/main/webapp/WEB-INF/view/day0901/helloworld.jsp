<%--
  1、<script> 标签的 type 属性为 text/babel 。
     这是因为 React 独有的 JSX 语法，跟 JavaScript 不兼容。凡是使用 JSX 的地方，都要加上 type="text/babel" 。
  2、react.js 是 React 的核心库，
     react-dom.js 是提供与 DOM 相关的功能，
     Browser.js 的作用是将 JSX 语法转为 JavaScript 语法，这一步很消耗时间，实际上线的时候，应该将它放到服务器完成。
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <script src="${ctx}/static/js/react.js"></script>
    <script src="${ctx}/static/js/react-dom.js"></script>
    <script src="${ctx}/static/js/browser.min.js"></script>
</head>
<body>
    <div id="example1"></div>
    <div id="example2"></div>
</body>
</html>
<script type="text/babel">
//    ReactDOM.render 是 React 的最基本方法，用于将模板转为 HTML 语言，并插入指定的 DOM 节点。
ReactDOM.render(
    <h1>Hello,world!</h1>,
    document.getElementById("example1")
);
//JSX语法遇到HTML标签（以 < 开头）,就用 HTML 规则解析；
// 遇到代码块（以 { 开头），就用 JavaScript 规则解析
var names = ['Alice','Emily','Kate'];
ReactDOM.render(
    <div>
        {
            names.map(function (name) {
                return <h1>Hello,{name}!</h1>
            })
        }
    </div>,
    document.getElementById("example2")
)
</script>