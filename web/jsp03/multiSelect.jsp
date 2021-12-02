<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    function itemChange(){
        var keyboard = ["갈축","청축","적축"];
        var mouse = ["광마우스","유선마우스","미키마우스"];
        var monitor = ["17인치","22인치","24인치","27인치"];
        
        var selectItem=$("#select1").val();
        var changeItem;
        if (selectItem === "키보드") {
            changeItem = keyboard;
        } else if (selectItem === "마우스") {
            changeItem = mouse;
        } else if (selectItem === "모니터") {
            changeItem = monitor;
        }
        $("#select2").empty();

        for (var cnt=0; cnt<changeItem.length;cnt++){
            var option = $("<option>" + changeItem[cnt]+"</option>");
            $("#select2").append(option);
        }
    }
</script>
</head>
<body>
<select name="select1" id="select1" onchange="itemChange()">
    <option>===선택===</option>
    <option value="키보드">키보드</option>
    <option value="마우스">마우스</option>
    <option value="모니터">모니터</option>
</select>
<select id="select2" style="width: 100px">

</select>
</body>
</html>
