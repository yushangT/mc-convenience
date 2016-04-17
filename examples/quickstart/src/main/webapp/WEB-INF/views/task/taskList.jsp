<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>任务管理</title>
</head>
<body>
	<c:if test="${not empty message}">
		<div id="message" class="alert alert-success">
			<button data-dismiss="alert" class="close">×</button>${message}</div>
	</c:if>
	<div class="row">
		<div class="span4 offset7">
			<form class="form-search" action="#">
				<label>名称：</label> <input type="text" name="search_LIKE_title" class="input-medium" value="${param.search_LIKE_title}">
				<button type="submit" class="btn" id="search_btn">Search</button>
			</form>
		</div>
		<tags:sort />
	</div>
	<table id="contentTable" class="table table-striped table-bordered table-condensed ">
		<thead>
			<tr>
				<th>序号</th>
				<th>姓名</th>
				<th>世代</th>
				<th>年龄</th>
				<th>生辰</th>
				<th>性别</th>
				<th>头像</th>
				<th>父级</th>
				<th>简介</th>
				<th>管理</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${tasks.content}" var="task" varStatus="index">
				<tr>
					<td>${ index.index + 1 + (tasks.number)*5}</td>
					<td><a href="${ctx}/task/update/${task.id}">${task.name}</a></td>
					<td><a href="${ctx}/task/update/${task.id}">${task.generations}</a></td>
					<td><a href="${ctx}/task/update/${task.id}">${task.age}</a></td>
					<td><a href="${ctx}/task/update/${task.id}">${task.birthday}</a></td>
					<td><a href="${ctx}/task/update/${task.id}">${task.gender}</a></td>
					<td><a href="${ctx}/task/update/${task.id}">${task.pic}</a></td>
					<td><a href="${ctx}/task/update/${task.id}">${task.parents}</a></td>
					<td width="300px"><a href="${ctx}/task/update/${task.id}">${task.introduction}</a></td>
					<td><a href="${ctx}/task/delete/${task.id}">删除</a> | <a href="${ctx}/task/update/${task.id}">更新</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<tags:pagination page="${tasks}" paginationSize="5" />
	<div>
		<a class="btn" href="${ctx}/task/create">创建任务</a>
	</div>
</body>
</html>
