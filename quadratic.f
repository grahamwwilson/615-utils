      program quadratic
      implicit none
      double precision a,b,c
      double precision a1,b1,c1
      integer iexample

      print *,'Which example ? (1-5)'
      read(5,*)iexample
      print *,'Solving quadratic equation example ',iexample

      if(iexample.eq.1)then
* Eqn 65 in Nievergelt (Example 10)
         a =  1.0d-15
         b =  6.76d-4
         c = -6.76d-4
      elseif(iexample.eq.2)then
* Eqn 24 in Nievergelt (Example 2)
         a = -0.158114166017d0
         b =  0.316227766017d0
         c = -0.1581136d0
      elseif(iexample.eq.3)then
* Eqn 32 in Nievergelt (Example 3)
         a = -0.312499999999d0
         b =  0.707106781186d0
         c = -0.4d0 
      elseif(iexample.eq.4)then
         a =  1.0d-11
         b =  6.76d-2
         c = -6.76d-4
      elseif(iexample.eq.5)then
         a1 =  1.0d-15
         b1 =  6.76d-4
         c1 = -6.76d-4
         a = a1
         b = -(2.0d0*a1 + b1)
         c = a1
      endif
   
      print *,' '
      print *,'a = ',a
      print *,'b = ',b
      print *,'c = ',c
      print *,' '

      call solve_hs(a,b,c)
      call solve_fagnano(a,b,c)
      call solve_nr(a,b,c)
      call solve_nievergelt(a,b,c)

      end

      subroutine solve_hs(a,b,c)
      implicit none
* Formula 1
      double precision a,b,c,dsq,xplus,xminus
      logical lboth
      parameter (lboth =.true.)
 
      dsq = b*b - 4.0d0*a*c

      if(dsq.gt.0.0d0)then
         xplus  = 0.5d0*(-b+sqrt(dsq))/a
         xminus = 0.5d0*(-b-sqrt(dsq))/a

         if(lboth)then
            print *,'HS:     Solutions ',xplus,xminus          
         else
            print *,'HS:     Non-negative solution ',xplus
         endif

      endif

      end

      subroutine solve_fagnano(a,b,c)
      implicit none
* Formula 2
      double precision a,b,c,dsq,xplus,xminus
      logical lboth
      parameter (lboth =.true.)
 
      dsq = b*b - 4.0d0*a*c

*      print *,'dsq = ',dsq,sqrt(dsq)

      if(dsq.gt.0.0d0)then
         xplus  = 2.0d0*c/(-b-sqrt(dsq))
         xminus  = 2.0d0*c/(-b+sqrt(dsq))
         if(lboth)then
            print *,'Fagnano:Solutions ',xplus,xminus            
         else
            print *,'Fagnano:Non-negative solution ',xplus
         endif
      endif

      end

      subroutine solve_nr(a,b,c)
      implicit none
* Formula 3 from Numerical Recipes equation 5.6.5
      double precision a,b,c,dsq,x1,x2,q
      logical lboth
      parameter (lboth =.true.)
 
      dsq = b*b - 4.0d0*a*c

      if(dsq.gt.0.0d0)then

         if(b.gt.0.0d0)then
            q = -0.5d0*(b + sqrt(dsq))
         else
            q = -0.5d0*(b - sqrt(dsq))
         endif
  
         x1 = q/a
         x2 = c/q

         if(lboth)then
            print *,'NR:     Solutions ',x2,x1          
         else
            print *,'NR:     Non-negative solution ',x2
         endif
 
      endif

      end

      subroutine solve_nievergelt(a,b,c)
      implicit none
* Formula 4 of Yves Nivergelt "How (Not) to Solve Quadratic Equations" 
* numerical analysts' quadratic formulae
      double precision a,b,c,dsq,h,t,x1,x2
      logical lboth
      parameter (lboth =.true.)

      h = b/2.0d0
      dsq = h*h - (a*c)

      if(dsq.gt.0.0d0)then
  
         if(h.gt.0.0d0)then
            t = -(h + sqrt(dsq))
         else
            t = -(h - sqrt(dsq))
         endif
    
         x1 = t/a
         x2 = c/t

         if(lboth)then
            print *,'YN:     Solutions ',x2,x1          
         else
            print *,'YN:     Non-negative solution ',x2
         endif

      endif

      end
