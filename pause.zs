#side server
#modloaded crafttweakerutils tickratechanger
#priority 1000

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerLoggedOutEvent;
import crafttweaker.command.ICommandSender;
import crafttweaker.server.IServer;
import mods.ctutils.server.Server;
import mods.ctutils.commands.Commands;


events.onPlayerLoggedIn(function(event) {
		val tickRateActive = "20";
		val serverSender = Commands.getServerCommandSender();
		print("[pause.zs] SOMEONE HAS LOGGED IN!");
		var players = Server.getCurrentPlayerCount(server);
		print("[pause.zs] Number of players: "+players);
		if players == 1 {
			server.commandManager.executeCommand(serverSender, "/tickrate "+tickRateActive+" server");
			print("[pause.zs] Setting tickrate to active value ("+tickRateActive+")");
		}
});

events.onPlayerLoggedOut(function(event) {
		val tickRateIdle = "0.2777";
		val serverSender = Commands.getServerCommandSender();
		print("[pause.zs] SOMEONE HAS LOGGED OUT!");
		var players = Server.getCurrentPlayerCount(server);
		print("[pause.zs] Number of players: "+players);
		if players == 1 {
			server.commandManager.executeCommand(serverSender, "/tickrate "+tickRateIdle+" server");
			print("[pause.zs] Setting tickrate to idle value ("+tickRateIdle+")");
		}
});