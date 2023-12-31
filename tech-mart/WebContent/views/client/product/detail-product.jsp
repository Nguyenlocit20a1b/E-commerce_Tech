<!-- include footer -->
<jsp:include page="/includes/header.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.image {
	height: 270px;
	padding: 10px;
	width: max;
}
</style>


<div class="product-big-title-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="product-bit-title text-center">
					<h2>Shop</h2>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="single-product-area">
	<div class="zigzag-bottom"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="single-sidebar">
					<h2 class="sidebar-title">Search Products</h2>
					<form action="">
						<input type="text" placeholder="Search products..."> <input
							type="submit" value="Search">
					</form>
				</div>

				<c:forEach items="${categories}" var="category">
					<div class="col-md-4">
						<div class="single-product-widget">
							<h2 class="product-wid-title">${category.name}</h2>
							<a href="/product?category=${category.name}"
								class="wid-view-more">View All</a>
							<c:forEach items="${products}" var="product">
								<c:if test="${category.name == product.category}">
									<div class="single-wid-product">
										<a href="single-product.html"><img
											src="static/img/product-thumb-1.jpg" alt=""
											class="product-thumb"></a>
										<h2>
											<a href="single-product.html">${product.name}</a>
										</h2>
										<div class="product-wid-rating">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
										<div class="product-wid-price">
											<ins>${product.price}VNĐ</ins>
										</div>
									</div>
								</c:if>
							</c:forEach>

						</div>
					</div>
				</c:forEach>

				<div class="single-sidebar">
					<h2 class="sidebar-title">Products</h2>
					<div class="thubmnail-recent">
						<img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
						<h2>
							<a href="">${product.name}</a>
						</h2>
						<div class="product-sidebar-price">
							<ins>${product.price}</ins>
						</div>
					</div>
				</div>

				<div class="single-sidebar">
					<h2 class="sidebar-title">Recent Posts</h2>
					<ul>
						<li><a href="">Sony Smart TV - 2015</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-8">
				<div class="product-content-right">
					<div class="product-breadcroumb">
						<a href="/">Home</a> <a href="">${product.category}</a><a href="">${product.name}</a>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="product-images">
								<div class="product-main-img">
									<img src="${product.image}" alt="">
									<c:if test="${category.name==product.category}"></c:if>
								</div>

								<div class="product-gallery">
									<img src="img/product-thumb-1.jpg" alt=""> <img
										src="img/product-thumb-2.jpg" alt=""> <img
										src="img/product-thumb-3.jpg" alt="">
								</div>
							</div>
						</div>

						<div class="col-sm-6">
							<div class="product-inner">
								<h2 class="product-name">${product.name}</h2>
								<div class="product-inner-price">
									<ins>${product.price}VND</ins>
								</div>

								<form action="" class="cart">
									<div class="quantity">
										<input type="number" size="4" class="input-text qty text"
											title="Qty" value="1" name="quantity" min="1" step="1">
									</div>
									<button class="add_to_cart_button" type="submit">Add
										to cart</button>
								</form>

								<div class="product-inner-category">
									<p>
										Category: <a href="">${product.category }</a>.
									</p>
								</div>

								<div role="tabpanel">
									<ul class="product-tab" role="tablist">
										<li role="presentation" class="active"><a href="#home"
											aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
										<li role="presentation"><a href="#profile"
											aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
									</ul>
									<div class="tab-content">
										<div role="tabpanel" class="tab-pane fade in active" id="home">
											<h2>Product Description</h2>
											<p>${product.description}</p>
										</div>
										<div role="tabpanel" class="tab-pane fade" id="profile">
											<h2>Reviews</h2>
											<div class="submit-review">
												<p>
													<label for="name">Name</label> <input name="name"
														type="text">
												</p>
												<p>
													<label for="email">Email</label> <input name="email"
														type="email">
												</p>
												<div class="rating-chooser">
													<p>Your rating</p>

													<div class="rating-wrap-post">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i>
													</div>
												</div>
												<p>
													<label for="review">Your review</label>
													<textarea name="review" id="" cols="30" rows="10"></textarea>
												</p>
												<p>
													<input type="submit" value="Submit">
												</p>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>


<%-- 						<div class="related-products-wrapper">
							<h2 class="related-products-title">Related Products</h2>
							<div class="related-products-carousel">
								<div class="single-product">
									<div class="product-f-image">
										<img class="image" src="${product.image }" alt="">
										<div class="product-hover">
											<a href="" class="add-to-cart-link"><i
												class="fa fa-shopping-cart"></i> Add to cart</a> <a href=""
												class="view-details-link"><i class="fa fa-link"></i> See
												details</a>
										</div>
									</div>

									<h2>
										<a href="">Sony Smart TV - 2015</a>
									</h2>

									<div class="product-carousel-price">
										<ins>$700.00</ins>
										<del>$100.00</del>
									</div>
								</div>
							</div>
						</div> --%>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/includes/footer.jsp" />