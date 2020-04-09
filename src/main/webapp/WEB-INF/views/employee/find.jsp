<%@ include file="../common/header.jsp"%>

<div class="panel">
	<div class="panel-heading">Find Employee</div>
	<div class="panel-block">
		<div class="container">
			<fieldset>
				<legend>Find by Id</legend>
				<form action="find" method="post"
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
								Id</button>
						</div>
					</div>
				</form>
			</fieldset>
			
			<fieldset>
				<legend>Find by Name</legend>
				<form action="find" method="post"
					enctype="application/x-www-form-urlencoded">
					<div class="columns field">
						<div class="column">
							<label class="label">* First Name:</label>
							<div class="control">
								<input type="text" name="firstname" class="input "
									placeholder="First Name" required>
							</div>
						</div>
						<div class="column">
							<label class="label">Middle Name:</label>
							<div class="control">
								<input type="text" name="middlename" class="input "
									placeholder="Middle Name">
							</div>
						</div>
						<div class="column">
							<label class="label">* Last Name:</label>
							<div class="control">
								<input type="text" name="lastname" class="input "
									placeholder="Last Name" required>
							</div>
						</div>
					</div>
					<div class="field is-grouped">
						<div class="control">
							<button type="submit" class="button is-primary">Find by
								Name</button>
						</div>
					</div>
				</form>
			</fieldset>
			
			<fieldset>
				<legend>Find by ...</legend>
				<div class="columns">
					<div class="column">
						<form action="find" method="post"
							enctype="application/x-www-form-urlencoded">
							<div class="field">
								<label class="label">* First Name:</label>
								<div class="control">
									<input type="text" name="firstname" class="input "
										placeholder="First Name" required>
								</div>
							</div>
							<div class="field is-grouped">
								<div class="control">
									<button type="submit" class="button is-primary">Find
										by Firstname</button>
								</div>
							</div>
						</form>
					</div>
					
					<div class="column field">
						<form action="find" method="post"
							enctype="application/x-www-form-urlencoded">
							<div class="field">
								<label class="label">* Middle Name:</label>
								<div class="control">
									<input type="text" name="middlename" class="input "
										placeholder="Middle Name" required>
								</div>
							</div>
							<div class="field is-grouped">
								<div class="control">
									<button type="submit" class="button is-primary">Find
										by Middlename</button>
								</div>
							</div>
						</form>
					</div>
					
					<div class="column field">
						<form action="find" method="post"
							enctype="application/x-www-form-urlencoded">
							<div class="field">
								<label class="label">* Last Name:</label>
								<div class="control">
									<input type="text" name="lastname" class="input "
										placeholder="Last Name" required>
								</div>
							</div>
							<div class="field is-grouped">
								<div class="control">
									<button type="submit" class="button is-primary">Find
										by Lastname</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</fieldset>
			
			<fieldset>
				<legend>Find by SP</legend>
				<form action="findbysp" method="post"
					enctype="application/x-www-form-urlencoded">
					<div class="columns field">
						<div class="column">
							<label class="label">First Name:</label>
							<div class="control">
								<input type="text" name="firstname" class="input "
									placeholder="First Name">
							</div>
						</div>
						<div class="column">
							<label class="label">Middle Name:</label>
							<div class="control">
								<input type="text" name="middlename" class="input "
									placeholder="Middle Name">
							</div>
						</div>
						<div class="column">
							<label class="label">* Last Name:</label>
							<div class="control">
								<input type="text" name="lastname" class="input "
									placeholder="Last Name" required>
							</div>
						</div>
					</div>
					
					<div class="field is-grouped">
						<div class="control">
							<button type="submit" class="button is-primary">Find by
								SP</button>
						</div>
					</div>
				</form>
			</fieldset>
			
			<c:if test="${detail != null}">
				<fieldset>
					<legend>
						<b>Your have searched below employee's detail</b>
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