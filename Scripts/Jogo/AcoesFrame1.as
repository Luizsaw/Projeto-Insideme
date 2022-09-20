//Dar a partida no motor de jogo
//Adiciona sons e sistema fim de jogo, pause e reset

import flash.events.*;
import flash.display.MovieClip;

import InsidemeClasses.*;

var telas: Array = [];
var jogoRemover: Array = [];

var mc: MovieClip = new MovieClip();

var cont: int = 0;
var cont2: int = 0;
var controle: int = 0;

var somJogo: Jogo = new Jogo();
var somJogoChn = new SoundChannel();
var snd_Transform4 = new SoundTransform();
snd_Transform4.volume = 0;

VariaveisLocais.iniciar = true;

stage.addEventListener(KeyboardEvent.KEY_DOWN, apertaTecla, false,0,true);
stage.addEventListener(Event.ENTER_FRAME, atualizar, false,0,true);

function pararSonsJogo():void
{
	somJogoChn.soundTransform = snd_Transform4;
	somJogoChn.stop();
}
function jogarSonsJogo():void{
	somJogoChn = somJogo.play(0,int.MAX_VALUE);
}

function apertaTecla(e: KeyboardEvent): void {
	
	if ((e.keyCode == 90) && (cont == 0)) {
		cont = 1;
		var pauseMenu: Teladepause = new Teladepause();
		pauseMenu.x = 1000;
		pauseMenu.y = 500;
		telas.push(pauseMenu);
		addChild(pauseMenu);
		VariaveisLocais.cont = true;
		VariaveisLocais.continueJogo = false;
		VariaveisLocais.pausarJogo = true;
		VariaveisLocais.fimDeJogo = false;

	}
}
function atualizar(e: Event): void {
	if (VariaveisLocais.iniciar) {
		iniciarJogo();
		VariaveisLocais.iniciar = false;
	}

	if (VariaveisLocais.fimInsideme) {
		if (cont2 == 1) {
			VariaveisLocais.cont4 = true;
			cont2 = 0;
		}
		if (cont == 1) {
			for (var a: int = telas.length - 1; a >= 0; a--) {
				if (telas[a] != null) {
					removeChild(telas[a]);
					telas[a]= null;
					telas.splice(a, 1);
					VariaveisLocais.pausarJogo = false;
				}
			}
			cont = 0;
		}
		for (var j1: int = jogoRemover.length - 1; j1 >= 0; j1--) {
			if (jogoRemover[j1] != null) {
				removeChild(jogoRemover[j1]);
				jogoRemover.splice(j1, 1);
				jogoRemover[j1] = null;
			}
		}
		VariaveisLocais.fimInsideme = false;
		VariaveisLocais.pausarJogo = false;
		VariaveisLocais.sairJogo = false;
		VariaveisLocais.resetarJogo = false;
		
		removeEventListener(Event.ENTER_FRAME, atualizar);
		stage.removeEventListener(KeyboardEvent.KEY_DOWN, apertaTecla);
		pararSonsJogo();
		gotoAndStop(1, "Conclusao");

	}
	if (VariaveisLocais.pausarJogo == false) {
		if (VariaveisLocais.limpar == false) {
			for (var j5: int = jogoRemover.length - 1; j5 >= 0; j5--) {
				if (jogoRemover[j5] != null) {
					jogoRemover[j5].atualizar();
				}
			}
		}
	}

	if (VariaveisLocais.sairJogo) {
		if (cont2 == 1) {
			VariaveisLocais.cont4 = true;
			cont2 = 0;
		}
		if (cont == 1) {
			for (var a5: int = telas.length - 1; a5 >= 0; a5--) {
				if (telas[a5] != null) {
					removeChild(telas[a5]);
					telas.splice(a5, 1);
					telas[a5]= null;
					VariaveisLocais.pausarJogo = false;
				}
			}
			cont = 0;
		}
		for (var j2: int = jogoRemover.length - 1; j2 >= 0; j2--) {
			if (jogoRemover[j2] != null) {
				removeChild(jogoRemover[j2]);
				jogoRemover.splice(j2, 1);
				//jogoRemover[j2]= null;
			}
		}
		VariaveisLocais.fimInsideme = false;
		VariaveisLocais.pausarJogo = false;
		VariaveisLocais.sairJogo = false;
		VariaveisLocais.resetarJogo = false;
		removeEventListener(Event.ENTER_FRAME, atualizar);
		stage.removeEventListener(KeyboardEvent.KEY_DOWN, apertaTecla);
		pararSonsJogo();
		gotoAndStop(1127, "Tela Inicial");

	}
	if (VariaveisLocais.cont2 == true) {
		if (cont == 1) {
			for (var a2: int = telas.length - 1; a2 >= 0; a2--) {
				if (telas[a2] != null) {
					removeChild(telas[a2]);
					telas.splice(a2, 1);
					telas[a2]= null;
					VariaveisLocais.pausarJogo = false;
				}
			}
			cont = 0;
		}
		VariaveisLocais.cont2 = false;
	}
	if (VariaveisLocais.cont4 == true) {
		VariaveisLocais.cont4 = false;
	}
	if (VariaveisLocais.resetarJogo) {

		if (cont2 == 1) {
			VariaveisLocais.cont4 = true;
			cont2 = 0;
		}

		if (cont == 1) {
			for (var a3: int = telas.length - 1; a3 >= 0; a3--) {
				if (telas[a3] != null) {
					removeChild(telas[a3]);
					telas.splice(a3, 1);
					telas[a3] = null;
					VariaveisLocais.pausarJogo = false;
				}
			}
			cont = 0;
		}


		for (var j3: int = jogoRemover.length - 1; j3 >= 0; j3--) {
			if (jogoRemover[j3] != null) {
				removeChild(jogoRemover[j3]);
				jogoRemover.splice(j3, 1);
				jogoRemover[j3]== null;
			}
		}
		removeEventListener(Event.ENTER_FRAME, atualizar);
		stage.removeEventListener(KeyboardEvent.KEY_DOWN, apertaTecla);
		VariaveisLocais.fimInsideme = false;
		VariaveisLocais.pausarJogo = false;
		VariaveisLocais.sairJogo = false;
		VariaveisLocais.resetarJogo = false;
		pararSonsJogo();
		gotoAndStop(1, "Reset");
	}
	if (VariaveisLocais.fimDeJogo) {
		stage.removeEventListener(KeyboardEvent.KEY_DOWN, apertaTecla);
		if (cont == 1) {
			for (var a4: int = telas.length - 1; a4 >= 0; a4--) {
				if (telas[a4] != null) {
					removeChild(telas[a4]);
					telas.splice(a4, 1);
					telas[a4]= null;
					VariaveisLocais.pausarJogo = false;
				}
			}
			cont = 0;
		}
		for (var j4: int = jogoRemover.length - 1; j4 >= 0; j4--) {
			if (jogoRemover[j4] != null) {
				removeChild(jogoRemover[j4]);
				jogoRemover.splice(j4, 1);
				jogoRemover[j4]= null;
			}
		}
		removeEventListener(Event.ENTER_FRAME, atualizar);

		cont2 = 1;
		VariaveisLocais.fimInsideme = false;
		VariaveisLocais.pausarJogo = false;
		VariaveisLocais.sairJogo = false;
		VariaveisLocais.resetarJogo = false;
		pararSonsJogo();
		if(VariaveisLocais.controleGameOver == false)
		{
			gotoAndStop(1, "Game Over");
		}
	}

}
function iniciarJogo(): void {
	var jogo: Main = new Main();
	jogoRemover.push(jogo);
	addChild(jogo);
	jogarSonsJogo();
	VariaveisLocais.sairJogo = false;
	VariaveisLocais.limpar = false;
	VariaveisLocais.fimDeJogo = false;
	VariaveisLocais.pausarJogo = false;
	VariaveisLocais.fimInsideme = false;
	VariaveisLocais.controleGameOver = false;
	
}