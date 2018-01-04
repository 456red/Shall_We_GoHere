<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> J@sko Sample Script </title>
<meta http-equiv=content-type content=text/html; charset=euc-kr>
<style type="text/css">
<!--
body,td{font-size:12px}
-->
</style>
</head>

<body>

<!---- [1단계] 아래와 같은 방법으로 태그와 코드를 복사 해 넣으세요 --->

<script language="JavaScript1.2">
var graphimage="poll.gif"

//////////// 첫번째 그래프 //////////

// 항목을 설정 하세요 [항목이름, 값]
var graphx=new Array()
graphx[0]=["SBS",60]
graphx[1]=["엠비씨",75]
graphx[2]=["연합뉴스",24]
graphx[3]=["KBS",52]


// 여러개의 그래프를 그릴 수 있습니다

//////////// 두번째 그래프 //////////

var graphy=new Array()
graphy[0]=["야후",60]
graphy[1]=["자스코",75]
graphy[2]=["MSN",24]
graphy[3]=["다음",52]


function graphit(g,gwidth){
total=0
for (i=0;i<g.length;i++)
total+=parseInt(g[i][1])

output='<table border="0" cellspacing="0" cellpadding="0">'
for (i=0;i<g.length;i++){
calpercentage=Math.round(g[i][1]*100/total)
calwidth=Math.round(gwidth*(calpercentage/100))
output+='<tr><td>'+g[i][0]+' </td><td><img src="'+graphimage+'" width="'+calwidth+'" height="10"> '+calpercentage+'%</td></tr>'
}
output+='</table>'
document.write(output+'<br>전체 투표수 : <b>'+total+'</b>')
}

// 그래프 그리기
// graphit(그래프배열명, 최대너비)
graphit(graphx,200)
document.write("<p>")
graphit(graphy,600)
</script>


<!-------------- 여기까지 ---------------->

</body>
</html>


