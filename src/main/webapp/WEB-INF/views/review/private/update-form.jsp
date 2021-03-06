<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" /></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
<style>
	body{
		background-color:#FFF;
	}
	h1{
		color:black;
	}
	label{
		color:black;
	}	
</style>
</head>
<body>
<jsp:include page="../../templates/nav.jsp"></jsp:include>
<div class="container">
	<h1>글 수정 양식 입니다.</h1>
	<form action="update.do" method="post">
		<!-- hidden -->
		<input type="hidden" name="num" id="num" value="${param.num }"/>
		<input type="hidden" name="pwd" value="${param.pwd }"/>
		
		<div class="form-group">
			<label for="writer">이름</label>
			<input class="form-control" type="text" id="writer" name="writer" value="${dto.writer }" disabled/>
		</div>
			
		<div class="form-group">
			<label for="title">제목</label>
			<input class="form-control" type="text" id="title" name="title" value="${dto.title}"/>
		</div>
		
		<div class="form-group">
			<label for="content">내용</label>
			<textarea class="form-control" name="content" id="content">${dto.content }</textarea>
		</div>
		
		<div class="btnWrap" style="text-align:center">
			<button class="btn btn-outline-primary" type="submit" onclick="submitContents(this);">수정완료</button>
			<button class="btn btn-outline-danger" type="reset">취소</button>
		</div>
	</form>
</div>

<!-- Smart Editor -->
<script src="${pageContext.request.contextPath }/SmartEditor/js/HuskyEZCreator.js"></script>
<script>
	var oEditors = [];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "content",
		sSkinURI: "${pageContext.request.contextPath}/SmartEditor/SmartEditor2Skin.html",	
		htParams : {
			bUseToolbar : true,				// 툴바 사용 여부
			bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부
			//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
			fOnBeforeUnload : function(){
				//alert("성공");
			}
		}, //boolean
		fOnAppLoad : function(){
			//예제 코드
			//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator: "createSEditor2"
	});
	
	function pasteHTML() {
		var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
		oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
	}
	
	function showHTML() {
		var sHTML = oEditors.getById["content"].getIR();
		alert(sHTML);
	}
		
	function submitContents(elClickedObj) {
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
		
		// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("content").value를 이용해서 처리하면 됩니다.
		
		try {
			elClickedObj.form.submit();
		} catch(e) {}
	}
	
	function setDefaultFont() {
		var sDefaultFont = '궁서';
		var nFontSize = 24;
		oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
	}
</script>
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>