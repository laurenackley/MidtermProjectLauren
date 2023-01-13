<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Spirit</title>
<%@ include file="nav.jsp"%>
</head>
<body>
	<section class="gradient-custom">
		<div class="container py-5 h-100">
			<div class="row justify-content-center align-items-center h-100">
				<div class="col-12 col-lg-9 col-xl-7">
					<div class="card shadow-2-strong card-registration"
						style="border-radius: 15px;">
						<div class="card-body p-4 p-md-5">

							<h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Update Spirit</h3>

							<form action="editSpirit.do" method="POST">
								<input type="hidden" name="spiritId" value="${spiritTasting.id}">

								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<label for="notes>">Notes:</label><br> <input
												type="text" name="notes"
												value="${spiritTasting.notes }">
										</div>

									</div>
								</div>
								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<label for="price">Price:</label><br> <input
												type="number" name="price" step="0.01"
												value="${spiritTasting.price }">


										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<label for="rating">Rating:</label><br> <input
												type="number" name="rating" min = 0  max = 10
												value="${spiritTasting.rating }" required>
										</div>

									</div>
								</div>

					 			<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<label for="dateSampled">Date Sampled:</label><br> <input
												type="date" name="dateSampled"
												value="${spiritTasting.dateSampled }" required>
										</div>

									</div>
								</div> 
				
								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline"><label for="photo">Image:</label><br>
									<textarea cols="50" rows="6" name="photo"
												> ${spiritTasting.photo} </textarea>
										</div>

									</div>
								</div>

								<div class="mt-4 pt-2">
									<input class="btn btn-primary btn-lg" type="submit"
										value="Update" />
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>