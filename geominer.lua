local a,b,c,d,e,f=9,2,5,64,99,{'cobblestone','sandstone','stone','dirt','grass','gravel','sand','end_stone','hardened_clay','mossy_cobblestone','planks','fence','torch','nether_brick','nether_brick_fence','nether_brick_stairs','netherrack','soul_sand'}local g,h=component,computer local function i(j)j=g.list(j)()if j then return g.proxy(j)end end local k,l,m,n,o,p,q=i("ob"),i("y_"),i("yz"),i("ft"),i("ne"),i("ch"),i("od")local r,s,t,u,v,w,A,B=l.getStackInInternalSlot,l.getInventorySize,m.scan,k.swing,k.count,k.transferTo,k.select,k.inventorySize()local C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,x,y,z,S,T,U,V,W,X,Y,Z,_,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac,ad,ae,af,ag={x={},y={},z={}},{{-1,0},{0,-1},{1,0},[0]={0,1}},{1,2,3,5,6,7,9,10,11},{'redstone','coal','dye','diamond','emerald'},math.huge,table.remove,table.insert,'minecraft:',true,0,0,0,0,0,0,0,0,0,0 a5=function(j)if p then p.setActive(j)end end _=function(j)while S~=j do Z((j-S)%4==1)end end a4=function()T,U,V=x,y,z a3()Y(0)a0(T,U,V)end a1=function()ad=9 for j=1,B do if v(j)>0 then ad=ad+1 end end return ad/B end Z=function(j)j=j or false if k.turn(j)then if j then S=(S+1)%4 else S=(S-1)%4 end end end a7=function(j)h.beep(99,5)if q then q.open(e)q.broadcast(e,j)ae=h.uptime()+30 while h.uptime()>=ae do af={h.pullSignal(1)}if af[1]=='modem_message'then pcall(load(af[6]))end end end end a8=function()for j=1,B do if v(j)>0 then A(j)if not k.drop(3)then while not k.drop(3)do a7(1)end end end end end Y=function(j)ae,af=u(j)if not ae and af=='block'then C.x,C.y,C.z={},{},{}a7(0)a3()else while u(j)do end end if k.move(j)then if j==0 then y=y-1 elseif j==1 then y=y+1 elseif j==3 then if S==0 then z,R=z+1,R+1 elseif S==1 then x,Q=x-1,Q-1 elseif S==2 then z,R=z-1,R-1 else x,Q=x+1,Q+1 end end end if#C.x~=0 then for ah=1,#C.x do if x==C.x[ah]and y==C.y[ah]and z==C.z[ah]then H(C.x,ah)H(C.y,ah)H(C.z,ah)break end end end end a0=function(ai,aj,ak)while y~=aj do if y<aj then Y(1)elseif y>aj then Y(0)end end if x<ai then _(3)elseif x>ai then _(1)end while x~=ai do Y(3)end if z<ak then _(0)elseif z>ak then _(2)end while z~=ak do Y(3)end end a2=function()for j=1,B do if v(j)>0 then for al=1,#f do if r(j).name==J..f[al]then A(j)k.drop(0)break end end end end if n then for al=1,#F do for j=1,9 do if v(E[j])>0 then A(E[j])for am=4,B-1 do if am==4 or am==8 or am>11 then w(am)end end end end for j=4,B do if j==4 or j==8 or j>11 then if v(j)>8 then if r(j).name==J..F[al]then A(j)while v()>0 do for am=1,9 do w(E[am],1)end end A(B)n.craft(64)end end end end end end end a3=function()a0(0,-1,0)Y(1)a2()::an::ag=nil for al=0,3 do ae=s(3)if ae and ae>6 then ag=K a8()if n then for j=1,ae do af=l.getStackInSlot(3,j)for al=1,#F do if af and af.name==J..F[al]then l.suckFromSlot(3,j)end end end a2()a8()end break end Z()end if not ag then a7(2)goto an end ag=nil for ao=0,3 do if s(3)and s(3)==1 then while not ag do if k.durability()~=1 then l.equip()k.drop(3)a7(3)k.suck(3)l.equip()else ag=K end end break end Z()end end a6=function()if a1()>0.9 then a2()if a1()>0.9 then a4()end end if k.durability()<0.1 then a4()end if h.energy()/h.maxEnergy()<0.2 then if o then for j=1,B do if o.insert(64)then X=K a7(4)break end end if X then X=nil else a4()end else a4()end end end a5(K)Y(0)while not S do k.turn(K)for ap=0,3 do u(3)if t(D[ap][1],D[ap][2],0,1,1,1)[1]==0 and k.place(3)then if t(D[ap][1],D[ap][2],0,1,1,1)[1]>0 then S=ap break end end end end while true do for aq=1,2 do for ar=1,O do if L==0 then M=M+1 elseif L==1 then N=N+1 elseif L==2 then M=M-1 else N=N-1 end while not W do ac,ad=t(-Q,-R,-1,8,8,1),1 for as=-R,7-R do for at=-Q,7-Q do if ac[ad]>=b and ac[ad]<=c then I(C.x,x+at)I(C.y,y-1)I(C.z,z+as)elseif ac[ad]<-0.3 then C.x,C.y,C.z,W={},{},{},y break end ad=ad+1 end end if#C.x~=0 then while#C.x~=0 do a9,aa,ab=G,G,0 for au=1,#C.x do a9=(x-C.x[au])^2+(z-C.z[au])^2 if a9<aa then aa,ab=a9,au end end a0(C.x[ab],C.y[ab],C.z[ab])end else if not W then Y(0)end end if y==-d then W=y end end a6()P=P+1 if P==a then a3()a7(5)a5(false)return else a0(M*8,math.abs(W)+y-1,N*8)end Q,R,W=0,0,nil end L=(L+1)%4 end O=O+1 end
