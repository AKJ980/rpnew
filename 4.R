4. 

a. 

for(a in 1:3){
  for(b in 1:3){
    print(paste("a=",a,"b=",b))
    if(b==2){
      break
    }
  }
}

b.

i <- 2
while(i<=5){
  if(i == 4){
    i <- i+1
    next
  }
  print(i)
  i <- i+1
}














