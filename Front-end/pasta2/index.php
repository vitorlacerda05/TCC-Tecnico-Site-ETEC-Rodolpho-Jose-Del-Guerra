<?php
	include_once("conexao.php");
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Celke</title>
        <link href="css/bootstrap.css" rel="stylesheet">		
        <link href="css/personalizado.css" rel="stylesheet">
    </head>
    <body>
		<!-- Inicio Menu -->
        <div class="bg-top navbar-light">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-4 d-flex align-items-center py-4 ">
    				<a href="index.html" class="navbar-brand">ETEC <span>Prof. Rodolpho <br>José Del Guerra</span></a>
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
	        	<li class="dropdown "><a href="index.html" class="nav-link">A instituição</a>
					<ul class="dropdown-menu bg-dark" style="list-style: none;" >
						<li class="dropdown-item "><a href="sobrenos.html" class="nav-link active">Sobre nós</a></li>
						<li class="dropdown-item "><a href="corpodocente.html" class="nav-link active">Corpo docente e funcionarios</a></li>
						<li class="dropdown-item "><a href="apm.html" class="nav-link active">Prestações de contas - APM</a></li>
						<li class="dropdown-item "><a href="projetos.html" class="nav-link active">Projetos</a></li>
						<li class="dropdown-item "><a href="https://nsa.cps.sp.gov.br/" class="nav-link active">NSA online</a></li>
					</ul>
					</li>
	        	<li class="dropdown"><a href="#" class="nav-link">Nossos cursos</a>
					<ul class="dropdown-menu bg-dark" style="list-style: none;">
						<li class="dropdown-item"><a href="em.html" class="nav-link active">Ensino médio</a></li>
						<li class="dropdown-item"><a href="emi.html" class="nav-link active">Ensino médio integrado</a></li>
						<li class="dropdown-item"><a href="ct.html" class="nav-link active">Cursos técnicos</a></li>
					</ul>
					</li>
	        	<li class="dropdown"><a href="downloads.html" class="nav-link">Downloads</a></li>
	        	<li class="dropdown"><a href="https://www.vestibulinhoetec.com.br/home/" class="nav-link">Vestibulinho</a></li>
				<li class="dropdown"><a href="#" class="nav-link">Noticias</a>
					<ul class="dropdown-menu bg-dark" style="list-style: none;">
						<li class="dropdown-item"><a href="concursoseprocessos.html" class="nav-link active">Concursos e processos seletivos</a></li>
						<li class="dropdown-item"><a href="estagioeemprego.html" class="nav-link active">Vagas de estágio e empregos</a></li>
						<li class="dropdown-item"><a href="gabarito.html" class="nav-link active">Gabarito do simulado</a></li>
						<li class="dropdown-item"><a href="vagasremanescentes.html" class="nav-link active">Vagas remanescentes</a></li>
						<li class="dropdown-item"><a href="reunioes.html" class="nav-link active">Reuniões de pais e mestres</a></li>
						<li class="dropdown-item"><a href="licitacoes.html" class="nav-link active">Licitações</a></li>
					</ul>
					</li>
				<li class="dropdown"><a href="#" class="nav-link">Eventos</a>
					<ul class="dropdown-menu bg-dark" style="list-style: none;">
						<li class="dropdown-item"> <a href="https://www.flickr.com/photos/142508757@N03/albums" class="nav-link active">Fotos</a></li>
						<li class="dropdown-item"> <a href="eventosfuturos.html" class="nav-link active">Eventos futuros</a></li>
					</ul>
					
					
					</li>
				<li class="dropdown"><a href="#" class="nav-link">Orientações</a>
					<ul class="dropdown-menu bg-dark" style="list-style: none;">
						<li class="dropdown-item"><a href="http://www.etecriopardo.com.br/home/docs/Clube%20de%20estudos.pdf" class="nav-link active">Clube de estudos</a></li>
						<li class="dropdown-item"><a href="aproveitamento.html" class="nav-link active">Aproveitamento de estudos</a></li>
						<li class="dropdown-item"><a href="tcc.html" class="nav-link active">TCC - Trabalho de Conclusão de Curso</a></li>
					</ul>
					</li>
				<li class="dropdown"><a href="#" class="nav-link">Área do aluno</a>
					<ul class="dropdown-menu bg-dark" style="list-style: none;">
						<li class="dropdown-item"><a href="cardapio.html" class="nav-link active">Cardápio Escolar</a></li>
						<li class="dropdown-item"><a href="aprovacoes.html" class="nav-link active">Aprovações nos vestibulares</a></li>
					</ul>
					</li>
			</ul>
			</center>
	      </nav>
	    </div>
	  </nav>
        <!-- Fim Menu -->
		
		
		<div class="espaco-topo">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
				<ol class="carousel-indicators">
					<?php
						$controle_ativo = 2;		
						$controle_num_slide = 1;
						$result_carousel = "SELECT * FROM carrouses ORDER BY id ASC";
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
						$result_carousel = "SELECT * FROM carrouses ORDER BY id ASC";
						$resultado_carousel = mysqli_query($conn, $result_carousel);
						while($row_carousel = mysqli_fetch_assoc($resultado_carousel)){ 
							if($controle_ativo == 2){ ?>
								<div class="item active">
									<img src="imagens/carousel/<?php echo $row_carousel['imagen_carousel']; ?>" alt="<?php echo $row_carousel['nome']; ?>">
								</div><?php
								$controle_ativo = 1;
							}else{ ?>
								<div class="item">
									<img src="imagens/carousel/<?php echo $row_carousel['imagen_carousel']; ?>" alt="<?php echo $row_carousel['nome']; ?>">
								</div> <?php
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
		</div>
	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>        
    </body>
</html>