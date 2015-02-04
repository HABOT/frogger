Feature: 
Como jugador 
Quiero seleccionar nivel
obtener diferentes grados de dificultad

Scenario:
	Given entre al niveles
	Then debo ver "FROGGER Niveles"

Scenario:
	Given entre al niveles
	When selecciono el nivel "Basico"
	And oprimir el boton "Continuar"

