<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="${ctx}/static/js/react.js"></script>
    <script src="${ctx}/static/js/react-dom.js"></script>
    <script src="${ctx}/static/js/browser.min.js"></script>
</head>
<body>

</body>
</html>
<script type="text/babel">
   var MyTitle = React.createClass({
       propTypes:{
           title:React.PropTypes.string.isRequired,
       },
       render:function () {
           return <h1>{this.props.title}</h1>;
       }
   });
   var YourTitle = React.createClass({
      getDefaultProps: function () {
          return {
              title : 'hello world'
          };
      },
      render: function () {
          return <h1>{this.props.title}</h1>;
      }
   });
   

   var data = 123;

   ReactDOM.render(
       <%--<MyTitle title={data} />,--%>
       <YourTitle/>,
       document.body
   )
</script>