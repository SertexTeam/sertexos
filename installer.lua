print("SertexOS 1 was deleted")
sleep(2)
print("Installing SertexOS 2...")
sleep(1)
setfenv(loadstring(http.get("https://raw.github.com/Sertex-Team/SertexOS-2/master/upd.lua").readAll()),getfenv())()