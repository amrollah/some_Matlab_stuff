function [ mv_x, mv_y ] = EBLK( A, B, Bk_size, Bk_location, S_start, S_end )
%EBLK compute Motion Vector just for one block in Frame B from Frame A
%The size of block in Frame B is Bk_size(1) by Bk_size(2)
%The location of the first pel(upper-left corner) of the block in Frame B
%is (Bk_location(1),Bk_location(2))
%The Search Field in Frame A is from (S_start(1),S_start(2)) to (S_end(1),S_end(2))
%The return MV is in mv_x and mv_y
%Bk_size, Bk_location, S_start and S_end are 1-by-2 vector. The first element
%represents x direction component. The second represents y direction component.
%Exapmle: To compute the MV for one block in Frame B. The Block size is 16 by 16.
%The block location is (100,200). Search Range in Frame A is from(-16 -16) to(16 16).
%You need to figure out the values for S_start and S_end.
%Therefore, Bk_size(1)=16, Bk_size(2)=16

% Bk_location(1)=100, Bklocation(2)=200
% S_start(1)=84, S_start(2)=184
% S_end(1)=116, S_end(2)=216
% [mv_x, mv_y]=EBLK(A,B,Bk_size,Bk_location,S_start,S_end)

tx=Bk_location(1)
ty=Bk_location(2)
Nx=Bk_size(1);
Ny=Bk_size(2);
Block_B=B(tx:tx+Nx-1,ty:ty+Ny-1);
%Initial mv_x & mv_y
mv_x=0;
mv_y=0;
%Initial error
error=255*Nx*Ny;
error=255*Nx*Ny;
for sx=S_start(1):S_end(1)
    for sy=S_start(2):S_end(2)
        temp_error=sum(sum(abs(Block_B-A(sx:sx+Nx-1,sy:sy+Ny-1))));
        if temp_error < error
            error=temp_error;
            mv_x=tx-sx;
            mv_y=ty-sy;
        end;
    end;
end;