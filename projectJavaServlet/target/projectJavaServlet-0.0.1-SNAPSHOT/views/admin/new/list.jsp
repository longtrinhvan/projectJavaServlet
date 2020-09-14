<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-new" />
<c:url var="NewURL" value="/admin-new" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="insert_or_delete">
		<div class="insert_or_delete--icon" id="btnDelete">
			<a href="<c:url value=''/>"><i style="color: rgb(206, 30, 30)"
				class="fas fa-trash-alt"></i></a>
		</div>
		<div class="insert_or_delete--icon">
			<a href="<c:url value='/admin-new?type=edit'/>"><i
				style="color: rgb(122, 209, 136)" class="fas fa-plus-square"></i></a>
		</div>
	</div>
	<table>
		<tr>
			<th><input type="checkbox" id="checkAll"></th>
			<th>Tên bài viết</th>
			<th>Mô tả ngắn</th>
			<th>Ngày tạo</th>
			<th>Cập nhật</th>
			<th style="width: 80px">Thao tác</th>

		</tr>
		<tbody>
		<c:forEach var="item" items="${model.listResult}">
			<tr>
				<td><input type="checkbox" id="checkbox_${item.id}"
					value="${item.id}"></td>
				<td>${item.title}</td>
				<td>${item.shortDescription}</td>
				<td>${item.createdDate}</td>
				<c:if test="${empty item.modifiedDate}">
					<td>....</td>
				</c:if>
				<c:if test="${not empty item.modifiedDate}">
					<td>${item.modifiedDate }</td>
				</c:if>
				<c:url var="editURL" value="/admin-new">
					<c:param name="type" value="edit" />
					<c:param name="id" value="${item.id}" />
				</c:url>
				<td style="width: 80px"><a href="${editURL}"><i
						style="color: rgb(44, 142, 212); font-size: 18px; background-color: rgb(85, 85, 85);"
						class="fas fa-edit"></i></a></td>
			</tr>	
		</c:forEach>
		</tbody>
	</table>
	<form action="<c:url value='/admin-new'/>" id="formSubmit" method="get">
		<input type="hidden" value="" id="page" name="page" /> <input
			type="hidden" value="" id="maxPageItem" name="maxPageItem" /> <input
			type="hidden" value="" id="sortName" name="sortName" /> <input
			type="hidden" value="" id="sortBy" name="sortBy" /> <input
			type="hidden" value="list" id="type" name="type" />
	</form>
	<ul class="pagination" id="pagination"></ul>
	<script type="text/javascript">
		var totalPages = ${model.totalPage};
		var currentPage = ${model.page};
		var limit = 4;

		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages : 5,
				startPage : currentPage,
				onPageClick : function(event, page) {
					if (currentPage != page) {
						$("#maxPageItem").val(limit);
						$("#page").val(page);
						$("#sortName").val("title");
						$("#sortBy").val("desc");
						$("#type").val();
						$("#formSubmit").submit();
					}
				}
			}).on('page', function(event, page) {
				console.info(page + ' (from event listening)');
			});
		});
		$("#btnDelete").click(function() {
			var data = {};
			var ids = $('tbody input[type=checkbox]:checked').map(function() {
				return $(this).val();
			}).get();
			data['ids'] = ids;
			deleteNew(data);
		});
		function deleteNew(data) {
			$
					.ajax({
						url : '${APIurl}',
						type : 'DELETE',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : "json",
						success : function(result) {
							window.location.href = "${NewURL}?type=list&page=1&maxPageItem=4&sortName=title&sortBy=desc";
						},
						error : function(error) {

						}
					});
		}
	</script>
</body>
</html>
