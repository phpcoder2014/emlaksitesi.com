<?php include_once("includes/header.php"); ?>
            <!-- CONTENT -->
            <div id="content">
<div class="container">

    <div id="main">
        <div class="row">
            <div class="span9">
                <h1 class="page-header">Aranan ilanları</h1>

                <div class="properties-rows">
    <div class="row">
	
	<?php
	$sehir 		= $_POST['sehir'];
	$emlak_turu = $_POST['emlak_turu'];
	$sorgu = mysql_query("select * from tbl_emlak where sehir LIKE '$sehir%' and kategori LIKE '$emlak_turu%'");			
			while($row = mysql_fetch_assoc($sorgu)){
			if($say = mysql_affected_rows()){$sonuc = "$say Kayıt bulundu";}
			if($row['kategori'] == '1'){$kategori = 'İşyeri ve Dükkan'; }
			if($row['kategori'] == '2'){$kategori = 'Apartman'; }
			if($row['kategori'] == '3'){$kategori = 'Tarla'; }
			if($row['kategori'] == '4'){$kategori = 'Çiftlik Evi'; }
			if($row['kategori'] == '5'){$kategori = 'Fabrika'; }
			if($row['kategori'] == '6'){$kategori = 'Daire'; }
			if($row['kategori'] == '7'){$kategori = 'Arsa'; }
			if($row['kategori'] == '8'){$kategori = 'Villa'; }
			
			
	?>
        <div class="property span9">
            <div class="row">
                <div class="image span3">
                    <div class="content">
                        <a href="detail.php?detay=<?php echo $row['emlak_id']; ?>"></a>
                        <img src="assets/img/emlak_photo/small/<?php echo $row['resim_1']; ?>" alt="<?php echo $row['emlak_baslik']; ?>">
                    </div><!-- /.content -->
                </div><!-- /.image -->

                <div class="body span6">
                    <div class="title-price row">
                        <div class="title span4">
                            <h2><a href="detail.php?detay=<?php echo $row['emlak_id']; ?>"><?php echo $row['emlak_baslik']; ?></a></h2>
                        </div><!-- /.title -->

                        <div class="price">
                            <?php echo $row['fiyat']; ?> TL
                        </div><!-- /.price -->
                    </div><!-- /.title -->

                    <div class="location"><?php echo $row['emlak_sahibi']; ?></div><!-- /.location -->
                    <p><?php $aciklama = $row['aciklama'];
						$kelime = explode(" ",$aciklama);
						$say = count($kelime);
						$sinir = 25;
						if($say <= $sinir) { $kes = $say*50/100; }
						else { $kes = $sinir; }
						for($i = 0; $i <= $kes; $i++)
						{ echo $kelime[$i].' ' ; }
					?></p>
                    <p>Kategori : <?php echo $kategori; ?></p>
                    <div class="area">
                        <span class="key">Alanı:</span><!-- /.key -->
                        <span class="value"><?php echo $row['alan']; ?> m²</span><!-- /.value -->
                    </div><!-- /.area -->
                    <div class="bedrooms"><div class="content">4</div></div><!-- /.bedrooms -->
                    <div class="bathrooms"><div class="content">3</div></div><!-- /.bathrooms -->
                </div><!-- /.body -->
            </div><!-- /.property -->
        </div><!-- /.row -->
		
	<?php } ?>
    </div><!-- /.row -->
</div><!-- /.properties-rows -->

<div class="pagination pagination-centered">
    <ul>
        <li><a href="#"><?php echo $sonuc;?></a></li>
    </ul>
</div><!-- /.pagination -->            
</div>
            <div class="sidebar span3">
                <div class="widget our-agents">
    <div class="title">
        <h2>Şubelerimiz</h2>
    </div><!-- /.title -->

    <div class="content">
        <div class="agent">
            <div class="image">
                <img src="assets/img/photos/emma-small.png" width="140px" height="141px" alt="">
            </div><!-- /.image -->
            <div class="name">Karacabey Şubesi</div><!-- /.name -->
            <div class="phone">Tavşanlı Mh. 60 sk. No: 4</div><!-- /.phone -->
            <div class="phone">0(224)-662-07 58</div><!-- /.phone -->
            <div class="email"><a href="mailto:karacabey@tanriverdiemlak.net">karacabey@tanriverdiemlak.net</a></div><!-- /.email -->
        </div><!-- /.agent -->

        <div class="agent">
            <div class="image">
                <img src="assets/img/photos/john-small.png" width="140px" height="141px" alt="">
            </div><!-- /.image -->
            <div class="name">Karacabey Şubesi</div><!-- /.name -->
            <div class="phone">Tavşanlı Mh. 60 sk. No: 4</div><!-- /.phone -->
            <div class="phone">0(224)-662-07 58</div><!-- /.phone -->
            <div class="email"><a href="mailto:bursa@tanriverdiemlak.net">bursa@tanriverdiemlak.net</a></div><!-- /.email -->
        </div><!-- /.agent -->
    </div><!-- /.content -->
</div><!-- /.our-agents -->
<div class="widget properties last">
    <div class="title">
        <h2>Bazı ilanlar</h2>
    </div><!-- /.title -->

    <div class="content">
	<?php $sorgu = mysql_query("Select * from tbl_emlak where durum='Kiralık' limit 6") or die("Sorgu Hatası"); 
			while($row = mysql_fetch_assoc($sorgu)){
	?>
        <div class="property">
            <div class="image">
                <a href="detail.php?detay=<?php echo $row['emlak_id']; ?>"></a>
                <img src="assets/img/emlak_photo/small/<?php echo $row['resim_1']; ?>" alt="<?php echo $row['emlak_baslik']; ?>">
            </div><!-- /.image -->

            <div class="wrapper">
                <div class="title">
                    <h3>
                        <a href="detail.php?detay=<?php echo $row['emlak_id']; ?>"><?php echo $row['emlak_baslik']; ?></a>
                    </h3>
                </div><!-- /.title -->
                <div class="location"><?php echo $row['emlak_sahibi']; ?>&nbsp;(<?php echo $row['durum']; ?>)</div><!-- /.location -->
                <div class="price"><?php echo $row['fiyat']; ?> ₺ <?php echo $row['sehir']; ?></div><!-- /.price -->
            </div><!-- /.wrapper -->
        </div><!-- /.property -->
	<?php } ?>
    </div><!-- /.content -->
</div><!-- /.properties -->
            </div>
        </div>
    </div>
</div>

    </div><!-- /#content -->
</div><!-- /#wrapper-inner -->
    </div><!-- /#footer-top -->
<?php include_once("includes/footer.php"); ?>