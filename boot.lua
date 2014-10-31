os.pullEvent = os.pullEventRaw
os.loadAPI(".sertexos/apis/sertexos")

sertexos.loadWithSHA()
sertexos.start()

function pass()
if fs.exists(".sertexos/.data/pass") then
	term.clear()
	term.setCursorPos(2,2)
	term.setTextColor( title )
	print(" SertexOS")
	print""
	while true do
		write(" Insert Password: ")
		local pass = read("*")
		local f = fs.open(".sertexos/.data/pass", "r")
		local crypt = sha256.sha256(pass)
		if crypt == f.readLine() then
			f.close()
			shell.run(".sertexos/home")
		else
			print(" Wrong Password!")
			sleep(2)
			
		end
	end
else
	shell.run(".sertexos/home")
end
end

if not http then
  error("You need HTTP API enabled!")
end

term.clear()
term.setCursorPos(2,2)
term.setTextColor( logo )
print("  # ")
print(" #  ")
print(" ###")
term.setCursorPos(2,2)
sertextext.center(2, "SertexOS")
term.setTextColor( text )
sertextext.centerDisplay("Loading...")
sleep(1.8)


if fs.exists(".sertexos/setup") then
	shell.run(".sertexos/setup")
end

pass()