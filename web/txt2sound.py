import asyncio
import websockets
import sys

async def hello():
	async with websockets.connect(
            'wss://haoheliu-audioldm-text-to-audio-generation.hf.space/queue/join') as websocket:
            
		payload1 = '{"fn_index":0,"session_hash":"w79owx6fht"}'
		payload2 = '{"fn_index":0,"data":["' + sys.argv[1] + '","low quality, average quality, music",5,2.5,'+ sys.argv[2] +',3],"event_data":null,"session_hash":"w79owx6fht"}'
		greeting = await websocket.recv()
		#print(f"< {greeting}")

		
		await websocket.send(payload1)
		#print(f"> {payload1}")
	
		est = await websocket.recv()
		#print(f"< {est}")
	
		askdata = await websocket.recv()
		#print(f"< {askdata}")
	
		
		await websocket.send(payload2)
		#print(f"> {payload2}")	
	
		startproc = await websocket.recv()
		#print(f"< {startproc}")
	
		end = await websocket.recv()
		print(f"{end}")


asyncio.get_event_loop().run_until_complete(hello())
