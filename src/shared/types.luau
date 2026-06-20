export type GameState = {
	read message: string,
}

local gameTemplate: GameState = {
	message = "Hello",
}

return {
	gameTemplate = gameTemplate,
}
