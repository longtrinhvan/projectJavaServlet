<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-new" />
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
</head>

<body>
	<form id="formSubmit">
		<div class="layout__left--title--shortdescription--content-pic">
			<div class="layout__left--title--shortdescription--content">
				<div class="select--category">
					<div class="label__select--category">
						<label>Thể loại</label>
					</div>
					<div class="selects--category">
						<select id="categoryCode" name="categoryCode">
							<c:if test="${empty model.categoryCode}">
								<option value="">Chọn loại bài viết</option>
								<c:forEach var="item" items="${categories}">
									<option value="${item.code}">${item.name}</option>
								</c:forEach>
							</c:if>
							<c:if test="${not empty model.categoryCode}">
								<option value="">Chọn loại bài viết</option>
								<c:forEach var="item" items="${categories}">
									<option value="${item.code}"
										<c:if test="${item.code==model.categoryCode}">selected="selected"</c:if>>${item.name}</option>
								</c:forEach>
							</c:if>
						</select>
					</div>
				</div>

				<div>
					<label>Tiêu đề</label> <input type="text" value="${model.title}"
						id="title" name="title" />
				</div>
				<div>
					<label>Mô tả ngắn</label> <input type="text"
						value="${model.shortDescription}" id="shortDescription"
						name="shortDescription" />
				</div>
				<div style="width: 95%">
					<label>Nội dung</label>
					<textarea rows="" cols="" id="content" name="content">${model.content}</textarea>
				</div>
			</div>
			<div class="pic">
				<div class="btn-pic">
					<label>Hình đại diện</label>
					<div class="icon-btn-minus">
						<i class="fas fa-trash"></i>
					</div>
					<div class="icon-btn--images">
						<i class="far fa-images"></i>
					</div>
				</div>
				<div class="pic-new">
					<c:if test="${empty  model.thumbnail}">
						<i class="far fa-image"></i>
					</c:if>
					<c:if test="${ not empty  model.thumbnail}">
						<iframe src="${model.thumbnail}" width="100%" height="304"></iframe>
					</c:if>
				</div>
				<div class="about__new">
					<p>Đã được tạo bởi: Long</p>
					<p>Ngày tạo: 1/11/2020</p>
					<p>Đã được cập nhật bởi: Long</p>
					<p>Ngày cập nhật: 1/11/2020</p>
				</div>

			</div>
		</div>
		<input type="hidden" value="${model.id}" id="id" name="id" /> <input
			type="hidden" value="${model.thumbnail}" id="thumbnail"
			name="thumbnail" />
	</form>
	<div class="save" id="btnAddOrUpdateNew">
		<button>
			<i class="far fa-save"></i> Lưu bài viết
		</button>
	</div>
	<script>
		var editor = '';
		$(document).ready(function() {
			editor = CKEDITOR.replace('content');
		});

		$('#btnAddOrUpdateNew').click(function(e) {
			e.preventDefault();
			var data = {};
			var formData = $('#formSubmit').serializeArray();
			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;
			});
			data["content"] = editor.getData();
			var id = $('#id').val();
			if (id == "") {
				addNew(data);
			} else {
				updateNew(data);
			}
		});
		function addNew(data) {
			$.ajax({
				url : '${APIurl}',
				type : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(data),
				dataType : "json",
				success : function(result) {

				},
				error : function(error) {

				}
			});
		}
		function updateNew(data) {
			$.ajax({
				url : '${APIurl}',
				type : 'PUT',
				contentType : 'application/json',
				data : JSON.stringify(data),
				dataType : "json",
				success : function(result) {

				},
				error : function(error) {

				}
			});
		}
	</script>

</body>
</html>