<div class='row pad-row post-content'>
	<div class='col-md-8' style='margin-bottom: 15px;'>
		<!-- start: post -->
		<?php
		if(count($postModel) == 0){
			echo "<div class='row post-row'>empty.</div>";
		}
		foreach($postModel as $post){
			/*
			$temp = strrpos($post->thumbnail, '/');
			$name = substr($post->thumbnail, $temp + 1, strlen($post->thumbnail) - $temp);
			*/
			echo "
			<div class='row post-row'>
				<div class='col-md-4 post-image-preview'>
					<a href='index.php?r=site/post&p=$post->post_id'>
						<img style='width: 100%; height: 100%;' src='".($post->thumbnail)."'/>
					</a>
				</div>
				<div class='col-md-8'>
					<h4 class='text-bold'>
						<a href='index.php?r=site/post&p=$post->post_id'>" .
							htmlspecialchars_decode(stripslashes($post->title))."</a>
					</h4>
					<p class='create-by'>
						By ".$post->user->fullname."
					</p>
					<article>
						".htmlspecialchars_decode(stripslashes($post->content_preview))."
					</article>
				</div>
			</div>
			";
		}

		?>
		<!-- end: post -->
	</div>
	<!--div class='col-md-4' style='margin-bottom: 15px; padding-top: 20px;'>
		<form method='post' action='#'>
			<div class="inner-addon right-addon">
			    <i class="glyphicon glyphicon-search"></i>
			    <input type="text" placeholder='search' class="form-control" />
			</div>
		</form>
	</div-->
</div>
