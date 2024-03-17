<?php
	include_once("conexao.php");
?>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <title>ETEC Rodolpho José Del Guerra</title>
	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
	
	
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">

    <link rel="stylesheet" type="text/css" href="css/style.css">

	<!--Título movimentando
	<script> var repeat=1 // 0 para rolar uma vez, 1 para rolar infinitamente
		var title=document.title
		var leng=title.length
		var start=1
		function titlemove() {
		titl=title.substring(start, leng) + title.substring(0, start)
		document.title=titl
		start++
		if (start==leng+1) {
		start=0
		if (repeat==0)
		return
		}
		setTimeout("titlemove()",900)  // aqui vc pode aumentar ou diminuir a velocidade 
		}
		if (document.title)
		titlemove()
	</script><!-->
	
	<!--FOTO NO TÍTULO<!-->
	<link rel="apple-touch-icon" sizes="57x57" href="images/favicon/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="images/favicon/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="images/favicon/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="images/favicon/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="images/favicon/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="images/favicon/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="images/favicon/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="images/favicon/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="images/favicon/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="images/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="images/favicon/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="images/favicon/favicon-16x16.png">
	<link rel="manifest" href="/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="images\favicon/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">
	<!--FIM FOTO NO TÍTULO<!-->
	
	<!--COMEÇO MENÚ<!-->
  </head>
  <body>
	  <div class="bg-top navbar-light">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-4 d-flex align-items-center py-4 ">
    				<a href="index.php" class="navbar-brand">ETEC <span>Prof. Rodolpho <br>José Del Guerra</span></a>
    			</div>
	    		<div class="col-lg-8 d-block">
		    		<div class="row d-flex">
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
					    	<div class="text">
					    		<span>E-mail</span>
						    	<span>e150dir@cps.sp.gov.br</span>
								<span>e150acad@cps.sp.gov.br</span>
						    </div>
					    </div>
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <div class="text">
						    	<span>Telefone</span>
						    	<span>Fale conosco: (19)3681-2389</span>
						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
    </div>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center px-4 bg-dark">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <nav class="collapse navbar-collapse bg-dark" id="ftco-nav">
		  <center>
	        <ul class="navbar-nav bg-dark">
	        	<li class="dropdown "><a href="#" class="nav-link">A instituição</a>
					<ul class="dropdown-menu bg-dark" style="list-style: none;" >
						<li class="dropdown-item bg-dark"><a href="sobrenos.html" class="nav-link active">Sobre nós</a></li>
						<li class="dropdown-item bg-dark"><a href="corpodocente.html" class="nav-link active">Corpo docente e funcionarios</a></li>
						<li class="dropdown-item bg-dark"><a href="apm.php" class="nav-link active">Prestações de contas - APM</a></li>
						<li class="dropdown-item bg-dark"><a href="projetos.php" class="nav-link active">Projetos</a></li>
						<li class="dropdown-item bg-dark"><a href="https://nsa.cps.sp.gov.br/" class="nav-link active">NSA online</a></li>
					</ul>
					</li>
	        	<li class="dropdown"><a href="#" class="nav-link">Nossos cursos</a>
					<ul class="dropdown-menu bg-dark" style="list-style: none;">
						<li class="dropdown-item active bg-dark"><a href="em.html" class="nav-link active">Ensino médio</a></li>
						<li class="dropdown-item active bg-dark"><a href="emi.html" class="nav-link active">Ensino médio integrado</a></li>
						<li class="dropdown-item active bg-dark"><a href="ct.php" class="nav-link active">Cursos técnicos</a></li>
					</ul>
					</li>
	        	<li class="dropdown"><a href="downloads.php" class="nav-link">Downloads</a></li>
	        	<li class="dropdown"><a href="https://www.vestibulinhoetec.com.br/home/" class="nav-link">Vestibulinho</a></li>
				<li class="dropdown"><a href="#" class="nav-link">Noticias</a>
					<ul class="dropdown-menu bg-dark" style="list-style: none;">
						<li class="dropdown-item active bg-dark"><a href="concursoseprocessos.php" class="nav-link active">Concursos e processos seletivos</a></li>
						<li class="dropdown-item active bg-dark"><a href="estagioeemprego.php" class="nav-link active">Vagas de estágio e empregos</a></li>
						<li class="dropdown-item active bg-dark"><a href="gabarito.php" class="nav-link active">Gabarito do simulado</a></li>
						<li class="dropdown-item active bg-dark"><a href="vagasremanescentes.php" class="nav-link active">Vagas remanescentes</a></li>
						<li class="dropdown-item active bg-dark"><a href="reunioes.php" class="nav-link active">Reuniões de pais e mestres</a></li>
						<li class="dropdown-item active bg-dark"><a href="licitacoes.html" class="nav-link active">Licitações</a></li>
					</ul>
					</li>
				<li class="dropdown"><a href="#" class="nav-link">Eventos</a>
					<ul class="dropdown-menu bg-dark" style="list-style: none;">
						<li class="dropdown-item active bg-dark"> <a href="https://www.flickr.com/photos/142508757@N03/albums" class="nav-link active">Fotos</a></li>
						<li class="dropdown-item active bg-dark"> <a href="eventosfuturos.php" class="nav-link active">Eventos futuros</a></li>
					</ul>
					
					
					</li>
				<li class="dropdown"><a href="#" class="nav-link">Orientações</a>
					<ul class="dropdown-menu bg-dark" style="list-style: none;">
						<li class="dropdown-item active bg-dark"><a href="http://www.etecriopardo.com.br/home/docs/Clube%20de%20estudos.pdf" class="nav-link active">Clube de estudos</a></li>
						<li class="dropdown-item active bg-dark"><a href="aproveitamento.html" class="nav-link active">Aproveitamento de estudos</a></li>
						<li class="dropdown-item active bg-dark"><a href="tcc.php" class="nav-link active">TCC - Trabalho de Conclusão de Curso</a></li>
					</ul>
					</li>
				<li class="dropdown"><a href="#" class="nav-link">Área do aluno</a>
					<ul class="dropdown-menu bg-dark" style="list-style: none;">
						<li class="dropdown-item active bg-dark"><a href="cardapio.php" class="nav-link active">Cardápio Escolar</a></li>
						<li class="dropdown-item active bg-dark"><a href="aprovacoes.html" class="nav-link active">Aprovações nos vestibulares</a></li>
					</ul>
					</li>
				<li class="dropdown"><a href="comunicados.php" class="nav-link">Comunicados</a>
					</li>		
			</ul>
			</center>
	      </nav>
	    </div>
	  </nav>
	 <!--FIM MENÚ<!-->
	
	<center>

			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
				<ol class="carousel-indicators">
					<?php
						$controle_ativo = 2;		
						$controle_num_slide = 1;
						$result_carousel = "SELECT * FROM slider ORDER BY id_slider ASC";
						$resultado_carousel = mysqli_query($conn, $result_carousel);
						while($row_carousel = mysqli_fetch_assoc($resultado_carousel)){ 
							if($controle_ativo == 2){ ?>
								<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li><?php
								$controle_ativo = 1;
							}else{ ?>
								<li data-target="#carousel-example-generic" data-slide-to="<?php echo $controle_num_slide; ?>"></li><?php
								$controle_num_slide++;
							}
						}
					?>						
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<?php
						$controle_ativo = 2;						
						$result_carousel = "SELECT * FROM slider ORDER BY id_slider ASC";
						$resultado_carousel = mysqli_query($conn, $result_carousel);
						while($row_carousel = mysqli_fetch_assoc($resultado_carousel)){ 
							if($controle_ativo == 2){ ?>
								<div class="item active">
									<img src="images/<?php echo $row_carousel['imagem']; ?>" alt="<?php echo $row_carousel['nome_imagem']; ?>" width="1350" height="448">
								</div>
								<?php
								$controle_ativo = 1;
							}else{ ?>
								<div class="item">
									<img src="images/<?php echo $row_carousel['imagem']; ?>" alt="<?php echo $row_carousel['nome_imagem']; ?>" width="1350" height="448">
								</div><?php
							}
						}
					?>					
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		
	

		
   

    <section class="ftco-services ftco-no-pb">
			<div class="container-wrap">
				<div class="row no-gutters">
          <div class="col-md-3 d-flex services align-self-stretch py-5 px-4 ftco-animate bg-quarternary">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-teacher"></span>
              </div>
              <div class="media-body p-2 mt-3 ">
                <h3 class="heading">Sobre nós</a></h3>
                <p>Somos um colégio acolhedor e que respeita as individualidades. Com muito amor, estimulamos cada aluno a conquistar seus objetivos, de forma ética e com sólidos valores humanos.</p>
				<p><a href="sobrenos.html" class="text-white">Saiba mais</a></p>
			  </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex services align-self-stretch py-5 px-4 ftco-animate bg-dark">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-reading"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Vestibulinho</a></h3>
                <p>Tire suas duvidas sobre o nosso vestibulinho, como: unidades e cursos; provas e gabaritos; documentos e legislação; etc.</p>
				<p><a href="https://www.vestibulinhoetec.com.br/home/" class="text-white">Saiba mais</a></p>
			  </div>
            </div>    
          </div>
          <div class="col-md-3 d-flex services align-self-stretch py-5 px-4 ftco-animate bg-quarternary">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-books"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Cursos técnicos</a></h3>
                <p>Conheça e tome conhecimentos sobre os cursos oferecidos pela nossa escola, aqui você encontra os pré-requisitos e informações essenciais sobre os nossos cursos.</p>
				<p><a href="ct.php" class="text-white">Saiba mais</a></p>
			  </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex services align-self-stretch py-5 px-4 ftco-animate bg-dark">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-diploma"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Eventos</a></h3>
                <p>Tenha acesso aos eventos ocasionados na nossa escola com fotos e informações exclusivas sobre as festas, palestras e reuniões que acontecem aqui na nossa escola.</p>
				<p><a a href="eventosfuturos.php" class="text-white">Saiba mais</a></p>
			  </div>
            </div>      
          </div>
        </div>
			</div>
		</section>
		
		<section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);" >
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-2 d-flex">
    			<div class="col-md-6 align-items-stretch d-flex">
    				<div class="img img-video d-flex align-items-center" style="<!-- imagem responsiva atrás do mapa -->">
    					<div class="video justify-content-center">

						<div class="map-responsive">
							<iframe src="https://www.google.com/maps/embed?pb=!1m0!3m2!1spt-BR!2sus!4v1448898586306!6m8!1m7!1sJRDEkf4k6svLXG1BNAw-sw!2m2!1d-21.61344819585489!2d-46.89028164053295!3f199.96134762908167!4f-5.800182810188957!5f1.570772489155733" width="400" height="350" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
						</div>
						
		  				</a>
						</div>
    				</div>
    			</div>
          <div class="col-md-6 heading-section heading-section-white ftco-animate pl-lg-5 pt-md-0 pt-5">
            <h2 class="mb-4">ETEC Rodolpho José Del Guerra</h2>
            <p> Ao escolher a ETEC Professor Rodolpho José Del Guerra, vocês optaram por uma instituição de ensino que promove o acolhimento e alimenta a fraternidade, num ambiente que propicia às famílias muito conforto e segurança social. </p>
          </div>
        </div>	
    		<div class="row d-md-flex align-items-center justify-content-center">
    			<div class="col-lg-12">
    				<div class="row d-md-flex align-items-center">
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		            	<div class="icon"><span class="flaticon-doctor"></span></div>
		              <div class="text">
		                <strong class="number" data-number="60">0</strong>
		                <span>Professores Certificados</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		            	<div class="icon"><span class="flaticon-doctor"></span></div>
		              <div class="text">
		                <strong class="number" data-number="600">0</strong>
		                <span>Estudantes</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		            	<div class="icon"><span class="flaticon-doctor"></span></div>
		              <div class="text">
		                <strong class="number" data-number="6">0</strong>
		                <span>Cursos</span>
		              </div>
		            </div>
		          </div>
	          </div>
          </div>
        </div>
    	</div>
    </section>

		<section class="ftco-section">
			<div class="container-fluid px-4">
				<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
            <h2 class="mb-4"><span>Notícias</span></h2>
          </div>
        </div>	
				<div class="row">
					<div class="col-sm-4 course ftco-animate">
						<div class="img" style="background-image: url(images/noticia1.jpg);"></div>
						<div class="text pt-4">
							<!--<p class="meta d-flex">
								<span><i class="icon-user mr-2"></i>Mr. Khan</span>
								<span><i class="icon-table mr-2"></i>10 seats</span>
								<span><i class="icon-calendar mr-2"></i>4 Years</span>-->
							</p>
							<h3><a href="https://nsa.cps.sp.gov.br/">Como mudar senha no NSA</a></h3>
							<p>Tutorial para gerar senha no NSA</p>
							<p><a href="http://www.etecriopardo.com.br/home/docs/tutorial para gerar senha no NSA.pdf" class="conteudo_med_img mover btn btn-primary ">Saiba mais</a></p>
							
							<div class="conteudo_med " ></div>
							
						</div>
					</div>
					<div class="col-sm-4 course ftco-animate">
						<div class="img" style="background-image: url(images/noticia2.jpg);"></div>
						<div class="text pt-4">
							<!--<p class="meta d-flex">
								<span><i class="icon-user mr-2"></i>Mr. Khan</span>
								<span><i class="icon-table mr-2"></i>10 seats</span>
								<span><i class="icon-calendar mr-2"></i>4 Years</span>-->
							</p>
							<h3><a href="comunicados.html">Comunicados da direção</a></h3>
							<p>Veja os comentários da direção para os alunos!</p>
							<p><a href="comunicados.php" class="btn btn-primary">Clique aqui</a></p>
						</div>
					</div>
					<div class="col-sm-4 course ftco-animate">
						<div class="img" style="background-image: url(images/noticia3.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
								<!--<span><i class="icon-user mr-2"></i>Mr. Khan</span>
								<span><i class="icon-table mr-2"></i>10 seats</span>
								<span><i class="icon-calendar mr-2"></i>4 Years</span>-->
							</p>
							<h3><a href="concursoseprocessos.html">Processo seletivo para docentes</a></h3>
							<p>Confira os procesos seletivos para docentes.</p>
							<p><a href="concursoseprocessos.php" class="btn btn-primary">Confira</a></p>
						</div>
					</div>
				</div>
				<div class="row">	
					<div class="col-sm-4 course ftco-animate">
						<div class="img" style="background-image: url(images/noticia4.jpg);"></div>
						<div class="text pt-4">
							<!--<p class="meta d-flex">
								<span><i class="icon-user mr-2"></i>Mr. Khan</span>
								<span><i class="icon-table mr-2"></i>10 seats</span>
								<span><i class="icon-calendar mr-2"></i>4 Years</span>-->
							</p>
							<h3><a href="estagioeemprego.html">Vagas para estágio</a></h3>
							<p>Veja as vagas para estagiários!</p>
							<p><a href="estagioeemprego.php class="btn btn-primary">Saiba mais</a></p>
						</div>
					</div>
					<div class="col-sm-4 course ftco-animate">
						<div class="img" style="background-image: url(images/noticia5.jpg);"></div>
						<div class="text pt-4">
							<!--<p class="meta d-flex">
								<span><i class="icon-user mr-2"></i>Mr. Khan</span>
								<span><i class="icon-table mr-2"></i>10 seats</span>
								<span><i class="icon-calendar mr-2"></i>4 Years</span>-->
							</p>
							<h3><a href="aprovacoes.html">Área do aluno</a></h3>
							<p>Entre na área do aluno!</p>
							<p><a href="aprovacoes.html" class="btn btn-primary">Clique aqui</a></p>
						</div>
					</div>
					<div class="col-sm-4 course ftco-animate">
						<div class="img" style="background-image: url(images/noticia6.jpg);"></div>
						<div class="text pt-4">
							<!--<p class="meta d-flex">
								<span><i class="icon-user mr-2"></i>Mr. Khan</span>
								<span><i class="icon-table mr-2"></i>10 seats</span>
								<span><i class="icon-calendar mr-2"></i>4 Years</span>-->
							</p>
							<h3><a href="cardapio.html">Cardápio escolar</a></h3>
							<p>Veja as refeições que terão na escola!</p>
							<p><a href="cardapio.php" class="btn btn-primary">Clique aqui</a></p>
						</div>
					</div>
				</div>
			</div>
		</section>	

		
<!-- FOOTER -->
		
    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2">Alguma duvida? Entre em contato</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">Avenida Alexandre Carlos de Melo, 18 - Jardim Aeroporto - São José do Rio Pardo - SP</span></li>
	                <li><span class="icon icon-phone"></span><span class="text"> (19)3681-2389</span></li>
	                <li><span class="icon icon-envelope"></span><span class="text">e150acad@cps.sp.gov.br</span></li>
					<li><span class="icon icon-envelope"></span><span class="text">e150dir@cps.sp.gov.br</span></li>
				  </ul>
	            </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-5">
              <h2 class="ftco-heading-2">Um pouco sobre nós</h2>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/bg_3.jpg);"></a>
                <div class="text">
                  
                  <div class="meta">
                    <div> A Escola Técnica Paula Souza iniciou suas atividades na cidade de São José do Rio Pardo em 20/02/2006.</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-5 ml-md-4">
              <h2 class="ftco-heading-2">Links</h2>
              <ul class="list-unstyled">
                <li><a href="index.html"><span class="ion-ios-arrow-round-forward mr-2"></span>Home</a></li>
				<li><a href="sobrenos.html"><span class="ion-ios-arrow-round-forward mr-2"></span>Sobre nós</a></li>
				<li><a href="ct.html"><span class="ion-ios-arrow-round-forward mr-2"></span>Cursos</a></li>
				<li><a href="https://www.vestibulinhoetec.com.br/home/"><span class="ion-ios-arrow-round-forward mr-2"></span>Vestibulinho</a></li>
				<li><a href="https://nsa.cps.sp.gov.br/"><span class="ion-ios-arrow-round-forward mr-2"></span>NSA Online</a></li>
			  </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2 mb-0">Redes sociais</h2>
            	<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="https://pt-br.facebook.com/etecriopardo"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="https://www.instagram.com/etecriopardo/?hl=pt-br"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
        </div>
        
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  
  </body>
</html>