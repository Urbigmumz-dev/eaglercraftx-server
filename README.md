# eaglercraftx server
This is just a simple server starter, all it does is host the different servers and a proxy, proxy and void_lobby server get max of 1G RAM together and the main server lobby gets 2G max for a total of only 3G ram, now this will need to be changed for bigger servers but for now its fine. For eaglercraft clients edit stuff only in the EaglerXBungee folder inside of the Plugins for BungeeCord, this is all the eaglercraft configs. void_lobby shouldn't be changed in anyway as it is a auth server only ment to auth for eaglercraft clients then it redirects to the main server 'lobby' that is the server you wanna change. All ports that are being used are 8081 (eaglerxbungee), 25564 (bungeecord default is 25577 and doesnt work if its not 25564), 25565 (void_lobby), 25566 (lobby), and 3306 for SQL auth server. 25565 and 25566 arent accessable without entering into the proxy which is 25564 or in this case 8081 for eaglercraft. when entering the server the deafult server (and only server accessable off of proxy) is 25565 (void_lobby) and void lobby then uses bungee to redirect to 25566 (lobby).

Go to SETUP.txt for instructions on what to do.

Still in testing - be patient
 -non-local testing
