line=200;
column=200;
line_discon=100;
column_discon=100;

%gamma_1 = 1.4
%gamma_2 = 4.4

phi_1=1.0;
rho_1=0.5313;
u_1=0.0;
v_1=0.0;
p_1=0.4;

phi_2=1.0;
rho_2=1.0;
u_2=0.7276;
v_2=0.0;
p_2=1.0;

phi_3=1.0;
rho_3=0.8;
u_3=0.0;
v_3=0.0;
p_3=1.0;

phi_4=1.0;
rho_4=1.0;
u_4=0.0;
v_4=0.7276;
p_4=1.0;


phi=zeros(column,1);
fid = fopen('PHI.dat','wt');
for i=1:column_discon
    phi(i)=phi_3;
end
for i=(column_discon+1):column
    phi(i)=phi_4;
end
for j=1:line_discon
fprintf(fid,'%g\t',phi);
fprintf(fid,'\n');
end
for i=1:column_discon
    phi(i)=phi_2;
end
for i=(column_discon+1):column
    phi(i)=phi_1;
end
for j=(line_discon+1):line
fprintf(fid,'%g\t',phi);
fprintf(fid,'\n');
end
fclose(fid);

rho=zeros(column,1);
fid = fopen('RHO.dat','wt');
for i=1:column_discon
    rho(i)=rho_3;
end
for i=(column_discon+1):column
    rho(i)=rho_4;
end
for j=1:line_discon
fprintf(fid,'%g\t',rho);
fprintf(fid,'\n');
end
for i=1:column_discon
    rho(i)=rho_2;
end
for i=(column_discon+1):column
    rho(i)=rho_1;
end
for j=(line_discon+1):line
fprintf(fid,'%g\t',rho);
fprintf(fid,'\n');
end
fclose(fid);

u=zeros(column,1);
fid = fopen('U.dat','wt');
for i=1:column_discon
    u(i)=u_3;
end
for i=(column_discon+1):column
    u(i)=u_4;
end
for j=1:line_discon
fprintf(fid,'%g\t',u);
fprintf(fid,'\n');
end
for i=1:column_discon
    u(i)=u_2;
end
for i=(column_discon+1):column
    u(i)=u_1;
end
for j=(line_discon+1):line
fprintf(fid,'%g\t',u);
fprintf(fid,'\n');
end
fclose(fid);

v=zeros(column,1);
fid = fopen('V.dat','wt');
for i=1:column_discon
    v(i)=v_3;
end
for i=(column_discon+1):column
    v(i)=v_4;
end
for j=1:line_discon
fprintf(fid,'%g\t',v);
fprintf(fid,'\n');
end
for i=1:column_discon
    v(i)=v_2;
end
for i=(column_discon+1):column
    v(i)=v_1;
end
for j=(line_discon+1):line
fprintf(fid,'%g\t',v);
fprintf(fid,'\n');
end
fclose(fid);

p=zeros(column,1);
fid = fopen('P.dat','wt');
for i=1:column_discon
    p(i)=p_3;
end
for i=(column_discon+1):column
    p(i)=p_4;
end
for j=1:line_discon
fprintf(fid,'%g\t',p);
fprintf(fid,'\n');
end
for i=1:column_discon
    p(i)=p_2;
end
for i=(column_discon+1):column
    p(i)=p_1;
end
for j=(line_discon+1):line
fprintf(fid,'%g\t',p);
fprintf(fid,'\n');
end
fclose(fid);
