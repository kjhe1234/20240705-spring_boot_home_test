/**
 * 
 */

function writeCheck() {
	
	if(document.writeForm.btitle.value.length == 0) {
		alert("글 제목은 필수 입력 사항입니다. 다시 확인해 주세요.");
		return false;
	}
	if(document.writeForm.bcontent.value.length <= 10) {
			alert("글 내용은 10자 이상이어야 합니다. 다시 확인해 주세요.");
			return false;
	}
	
	document.writeForm.submit();
				
		
}
