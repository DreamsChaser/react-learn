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
    //this.props 对象的属性与组件的属性一一对应，
    // 但是有一个例外，就是 this.props.children 属性。它表示组件的所有子节点
    //this.props.children 的值有三种可能：
    // 如果当前组件没有子节点，它就是 undefined ;
    // 如果有一个子节点，数据类型是 object ；
    // 如果有多个子节点，数据类型就是 array 。所以，处理 this.props.children 的时候要小心。
    //React 提供一个工具方法 React.Children 来处理 this.props.children 。
    // 我们可以用 React.Children.map 来遍历子节点，而不用担心 this.props.children 的数据类型是 undefined 还是 object。

    var NodeList = React.createClass({
        render: function () {
            return (
                <ol>
                    {
                        React.Children.map(this.props.children, function (child) {
                            return <li>{child}</li>;
                        })
                    }
                </ol>
            )
        }
    });
    ReactDOM.render(
        <NodeList>
            <span>hello</span>
            <span>world</span>
        </NodeList>,
        document.body
    )
</script>