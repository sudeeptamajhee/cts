<%@ include file="../common/header.jsp"%>

<div class="panel">
	<div class="panel-heading">Delete Employee</div>
	<div class="panel-block">
		<div class="container">
			<fieldset>
				<legend>Delete Employee</legend>
				<form action="delete" method="delete"
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
							<button type="submit" class="button is-primary">Find to
								Delete</button>
						</div>
					</div>
				</form>
			</fieldset>
			
			<c:if test="${detail != null}">
				<fieldset>
					<legend>
						<b>Your have deleted below employee's detail</b>
					</legend>
					<%@ include file="detail.jsp"%>
				</fieldset>
			</c:if>

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
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp"%>