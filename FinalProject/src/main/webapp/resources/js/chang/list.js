function go(page){
	var limit = $('#viewcount').val();
	var data = "limit=" +limit + "&state=ajax&page=" + page;
	ajax(data);
}
function setPaging(href, digit){
	var output ="<li class=page-item>";
	gray="";
	if(href==""){
		gray=" gray";
	}
	anchor = "<a class='page-link" + gray + "'" + href + ">" + digit +"</a></li>";
	output += anchor;
	return output;
}
function ajax(sdata){
	console.log(sdata)
	output = "";
	$.ajax({
		type : "POST",
		data : sdata,
		url : "list_ajax",
		dataType : "json",
		cache : false,
		success : function(data){
			$("#viewcount").val(data.limit);
			$("table").find("font").text("글 개수 : " + data.listcount);
			
			if (data.listcount > 0){// 총 갯수가 0보다 큰 경우
				$("tbody").remove();
				var num=data.listcount - (data.page -1) * data.limit;
				console.log(num)
				var output = "<tbody>";
				$(data.jiklist).each(
						function(index,item){
							output += '<tr><td>'+ item.nick + '</td>'
							
							img="";
							if (item.jik_RE_LEV > 0){
								img="<img src='../resources/image/chang/line.gif'>";
							}
							output += "<td><div>" + blank + img
							output += ' <a href="detail?num=' + (num--) + '">'
							output += item.jik_SUBJECT.replace(/</g,'&lt;').replace(/>/g,'&gt;')
									+'</a></div></td>'
							output += '<td><div>' + item.nick+'</div></td>'
							output += '<td><div>' + item.jik_date+'</div></td>'
							output += '<td><div>' + item.jik_readcount
								    +'</div></td></tr>'
						})//each end
						output += "</tbody>"
						$('table').append(output)//table 완성
						
						$(".pagination").empty(); // 페이징 처리 영역 내용 제거
						output = "";
						
						digit = '이전&nbsp;'
						href="";
						if(data.page > 1){
							href = 'href=javascript:go(' + (data.page - 1) + ')';
						}
						output += setPaging(href,digit);
						
						for(var i = data.startpage; i <= data.endpage; i++){
							digit = i;
							href="";
							if( i != data.page){
								href = 'href=javascript:go(' + i + ')';
							}
							output += setPaging(href,digit);
						}
						
						digit = '&nbsp;다음&nbsp;';
						href="";
						if(data.page < data.maxpage){
							href = 'href=javascript:go(' + (data.page + 1) + ')';
						}
						output += setPaging(href,digit);
						
						$('.pagination').append(output)
			}//if(data.listcount) end
		}, // success end
		error : function(){
			console.log('에러')
		}
	})// ajax end
}// function ajax end
$(function() {
		$("#viewcount").change(function(){
			go(1); //보여줄 페이지를 1페이지로 설정합니다.
		}); // change end
	
		$("button").click(function(){
			location.href="write";
		})
})