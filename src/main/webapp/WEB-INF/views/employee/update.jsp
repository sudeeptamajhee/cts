<%@ include file="../common/header.jsp"%>

<div class="card bg-secondary text-white">
	<div class="card-header">Update Employee</div>
	<div class="card-body">
		<div class="container">
			<form action="findtoupdate" method="post"
				enctype="application/x-www-form-urlencoded">
				<div class="form-group">
					<label for="id">* Employee Id:</label> <input type="number" name="id"
						class="form-control form-control-sm" placeholder="Employee Id"
						id="id" required>
				</div>
				<button type="submit" class="btn btn-sm btn-primary">Find</button>
			</form>
			
			<br/>
			<c:if test="${message != null}">
				<div class="alert alert-danger">
					<strong>Error!</strong> ${message}
				</div>
			</c:if>

			<c:if test="${detail != null}">
				<c:if test="${action == 'findtoupdate'}">
					<p>Your search result:</p>
				</c:if>
				<c:if test="${action == 'update'}">
					<p>You have updated below employee's detail:</p>
				</c:if>
				<form action="update" method="post"
					enctype="application/x-www-form-urlencoded">
					<table class="table">
						<thead>
							<tr>
								<th>#</th>
								<th>* First Name</th>
								<th>* Middle Name</th>
								<th>* Last Name</th>
								<th>* Date of Join</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${detail}" var="e">
								<f:formatDate var="dojstr" type="date" value="${e.doj}"
									pattern="yyyy-MM-dd" />
								<tr>
									<td>${e.id}<input type="hidden" class="form-control"
										name="id" value="${e.id}" /></td>
									<td><input type="text"
										class="form-control form-control-sm" name="firstname"
										value="${e.firstname}" required /></td>
									<td><input type="text"
										class="form-control form-control-sm" name="middlename"
										value="${e.middlename}" /></td>
									<td><input type="text"
										class="form-control form-control-sm" name="lastname"
										value="${e.lastname}" required /></td>
									<td><input type="date"
										class="form-control form-control-sm" name="doj"
										value="${dojstr}" required /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<button type="submit" class="btn btn-sm btn-primary">Update</button>
				</form>
			</c:if>
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp"%>