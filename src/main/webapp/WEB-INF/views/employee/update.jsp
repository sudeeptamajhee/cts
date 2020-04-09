<%@ include file="../common/header.jsp"%>

<div class="panel">
	<div class="panel-heading">Update Employee</div>
	<div class="panel-block">
		<div class="container">
			<fieldset>
				<legend>Update Employee</legend>
				<form action="findtoupdate" method="post"
					enctype="application/x-www-form-urlencoded">
					<div class="field">
						<label class="label">* Employee Id:</label>
						<div class="control">
							<input type="number" name="id" class="input"
								placeholder="Employee Id" required>
						</div>
					</div>
					<div class="field is-grouped">
						<div class="control">
							<button type="submit" class="button is-primary">Find by
								Update</button>
						</div>
					</div>
				</form>
			</fieldset>

			<c:if test="${message != null}">
				<article class="message is-primary">
					<div class="message-header">
						<p>Message</p>
						<button class="delete" aria-label="delete"></button>
					</div>
					<div class="message-body">
						<strong>Error!</strong> ${message}
					</div>
				</article>
			</c:if>

			<c:if test="${detail != null}">
				<fieldset>
					<c:if test="${action == 'findtoupdate'}">
						<legend><b>Your search result</b></legend>
					</c:if>
					<c:if test="${action == 'update'}">
						<legend><b>You have updated below employee's detail</b></legend>
					</c:if>
					<form action="update" method="post"
						enctype="application/x-www-form-urlencoded">
						<table class="table is-hoverable is-fullwidth">
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
										<td>${e.id}<input type="hidden" class="input" name="id"
											value="${e.id}" /></td>
										<td><input type="text" class="input" name="firstname"
											value="${e.firstname}" required /></td>
										<td><input type="text" class="input" name="middlename"
											value="${e.middlename}" /></td>
										<td><input type="text" class="input" name="lastname"
											value="${e.lastname}" required /></td>
										<td><input type="date" class="input" name="doj"
											value="${dojstr}" required /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="field is-grouped">
							<div class="control">
								<button type="submit" class="button is-primary">Update</button>
							</div>
						</div>
					</form>
				</fieldset>
			</c:if>
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp"%>