
<div class='row pad-row post-content' style='margin-top: 15px;'>
	<div class='col-md-8' style='margin-bottom: 15px;'>
        <img class='img-fluid' style='width: 100%;' src='<?=$postModel->thumbnail?>'/>
        <h4 class='text-bold'>
                <a href='#'><?=htmlspecialchars_decode(stripslashes($postModel->title))?></a>
        </h4>
        <p class='create-by'>
            By <?=$postModel->user->fullname?>
        </p>
        <article>
            <?=str_replace('<img', '<img class="img-fluid" ', stripslashes(htmlspecialchars_decode($postModel->content)))?>
        </article>
        <p class='sub-post-footer'>
            ติดต่อเพื่อขอนัดรับคำปรึกษากับคุณหมอศรัณย์ ได้ที่ 02-693-9391 ถึง 2 หรือจองออนไลน์ได้ที่ <a href='#'>BOOKING</a>
            เวลาให้คำปรึกษา : จันทร์, อังคาร, พฤหัส และเสาร์ เวลา 17.00 - 21.00 น.
        </p>
    </div>
</div>
