
print ("test concluded")
for i=1,15 do 
    for m, v in listfiles('/') do
    	print(m,v)
    	task.wait(3)
    	error(m)
    end	
end
