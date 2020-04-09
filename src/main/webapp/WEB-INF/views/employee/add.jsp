<%@ include file="../common/header.jsp"%>

<div class="panel">
	<div class="panel-heading">Add Employee</div>
	<div class="panel-block">
		<div class="container">
			<fieldset>
				<legend>Add New Employee</legend>
				<form action="add" method="put"
					enctype="application/x-www-form-urlencoded">
					<div class="columns">
						<div class="column field">
							<label class="label">* First Name:</label>
							<div class="control">
								<input type="text" class="input" name="firstname"
									placeholder="First Name" required>
							</div>
						</div>
						<div class="column field control">
							<label class="label">* Middle Name:</label>
							<div class="control">
								<input type="text" class="input" name="middlename"
									placeholder="Middle Name" required>
							</div>
						</div>
						<div class="column field control">
							<label class="label">* Last Name:</label>
							<div class="control">
								<input type="text" class="input" name="lastname"
									placeholder="Last Name" required>
							</div>
						</div>
					</div>
					<div class="columns">
						<div class="column field control">
							<label class="label">* Date of Join:</label>
							<div class="control">
								<input type="date" class="input" name="doj"
									placeholder="Date of Join" required>
							</div>
						</div>
					</div>
					<div class="field is-grouped">
						<div class="control">
							<button type="submit" class="button is-primary">Add</button>
						</div>
					</div>
				</form>
			</fieldset>
						
			<c:if test="${detail != null}">
				<fieldset>
					<legend>
						<b>You have added below employee's detail</b>
					</legend>
					<%@ include file="detail.jsp"%>
				</fieldset>
			</c:if>
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp"%>