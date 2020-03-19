<%@ include file="../common/header.jsp"%>

<div class="card bg-secondary text-white">
	<div class="card-header">Employee Home Page</div>
	<div class="card-body">
		<div class="container">
			<div id="demo" class="carousel slide" data-ride="carousel">

				<!-- Indicators -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
				</ul>

				<!-- The slideshow -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="https://images.livemint.com/img/2019/09/17/600x338/cognizant-k6y--621x414@LiveMint_1568689618899.jpg" alt="Los Angeles">
					</div>
					<div class="carousel-item">
						<img src="https://jobs.cybertecz.in/wp-content/uploads/2019/12/Cognizant_Picxy-696x465.jpg" alt="Chicago">
					</div>
					<div class="carousel-item">
						<img src="https://media.glassdoor.com/l/5b/bb/cb/f0/cts.jpg" alt="New York">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="carousel-control-prev" href="#demo" data-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</a> <a class="carousel-control-next" href="#demo" data-slide="next">
					<span class="carousel-control-next-icon"></span>
				</a>

			</div>
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp"%>