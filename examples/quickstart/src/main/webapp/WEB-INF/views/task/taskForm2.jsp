<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>任务管理</title>
</head>
<body>
	<form id="inputForm" action="${ctx}/task/${action}" method="post" class="form-horizontal">
		<input type="hidden" name="id" value="${task.id}" />
		<fieldset>
			<legend>
				<small>管理任务</small>
			</legend>
			
			<div class="control-group">
				<label for="task_name" class="control-label">姓名:</label>
				<div class="controls">
					<input type="text" id="task_name" name="name" value="${task.name}" class="input-large required" minlength="1" />
				</div>
			</div>
			<div class="control-group">
				<label for="generations" class="control-label">世代:</label>
				<div class="controls">
					<input type="text" id="task_generations" name="generations" value="${task.generations}" class="input-large required" minlength="3" />
				</div>
			</div>
			<div class="control-group">
				<label for="birthday" class="control-label">生辰:</label>
				<div class="controls">
					<input type="text" id="task_birthday" name="birthday" value="${task.birthday}" class="input-large required" minlength="3" />
				</div>
			</div>
			
			<div class="control-group">
				<label for="age" class="control-label">年龄:</label>
				<div class="controls">
					<input type="text" id="task_age" name="age" value="${task.age}" class="input-large required" minlength="1" />
				</div>
			</div>
			
			<div class="control-group">
				<label for="gender" class="control-label">性别:</label>
				<div class="controls">
					<input type="text" id="task_gender" name="gender" value="${task.gender}" class="input-large required" minlength="1" />
				</div>
			</div>
			<div class="control-group">
				<label for="pic" class="control-label">头像:</label>
				<div class="controls">
					<input type="text" id="task_pic" name="pic" value="${task.pic}" class="input-large required" minlength="1" />
				</div>
			</div>
			<div class="control-group">
				<label for="parents" class="control-label">父级:</label>
				<div class="controls">
					<input type="text" id="task_parents" name="parents" value="${task.parents}" class="input-large required" minlength="1" />
				</div>
			</div>
			<div class="control-group">
				<label for="introduction" class="control-label">简介</label>
				<div class="controls">
					<textarea id="introduction" name="introduction" class="input-large">${task.introduction}</textarea>
				</div>
			</div>
			
			
			<div class="form-actions">
				<input id="submit_btn" class="btn btn-primary" type="submit" value="提交" />&nbsp; <input id="cancel_btn" class="btn" type="button" value="返回" onclick="history.back()" />
			</div>
			
		</fieldset>
	</form>
	<script>
		$(document).ready(function() {
			//聚焦第一个输入框
			$("#task_title").focus();
			//为inputForm注册validate函数
			$("#inputForm").validate();
		});
	</script>
</body>
</html>
