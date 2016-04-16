%loading all the images

S = 'Welcome to MaSiZa';
disp(S);

T = 'You can now choose your topping!! 1. Cheese 2. Corn 3. Onion 4. Tomato ';
disp(T);

 count = 0;
 base = imread('pizza1.jpg'); %reading the base image
  
 [x1,y1] = size(base); %size of base image
         
    n = input ('Enter your choice');
      
    switch n
    
       case 1
           %TOPPING #1
            cheese = imread('ch.jpg')
            [x, y] = size(cheese)
                    for i = 1:x 
                        for j = 1:y
                            if (cheese(i,j) == 255 || cheese(i,j) == 33) %calling the alpha function only if the pixel is black/brown
                              alphamask(eye(200), [0 0 1], 0.2);
                               end
                        end
                    end
                    count = count + 1;
      imshow(cheese); 
      
   case 2
        %TOPPING #2
            corn = imread('corn.JPG')
            [x, y] = size(corn)
                    for i = 1:x 
                        for j = 1:y
                            if (corn(i,j) == 255) 
                               alphamask(eye(200), [0 0 1], 0.2);
                               end
                        end
                    end
                    count = count + 1;
      imshow(corn); 
     
        case 3
            %TOPPING #3
            onion = imread('DSCN8734.JPG')
            [x, y] = size(onion)
                    for i = 1:x 
                        for j = 1:y
                            if (onion(i,j) == 255) 
                               alphamask(eye(200), [0 0 1], 0.2);
                               end
                        end
                    end
                    count = count + 1;
      imshow(onion); 
                  
        case 4
 %TOPPING #4
            tomato = imread('IMG-20160410-WA0034.jpg')
            [x, y] = size(tomato)
                    for i = 1:x 
                        for j = 1:y
                            if (tomato(i,j) == 255) 
                               alphamask(eye(200), [0 0 1], 0.2);
                               end
                        end
                    end
                    count = count + 1;
      imshow(tomato); 
                  
         otherwise
        X = 'invalid choice';
        disp(X);
        return;
       
    end

    T = 'How is your apetite? 1. Personal 2. Medium 3. Family';
disp(T);

n2 = input ('Enter your choice');

if n2 == 1
      if n==1
            ch = imresize(cheese, 0.5);
            imshow(ch);
      elseif n==2
                c = imresize(corn, 0.5);
                 imshow(c);
      elseif n==3
                    o = imresize(onion, 0.5);
                    imshow(o);
      elseif n==4
                        t= imresize(tomato, 0.5);
                        imshow(t);
                    else
                        X = 'invalid choice above';
                        disp(X);
                    end
end 
            
    if n2==2
        if n==1
            ch = imresize(cheese, 0.8);
            imshow(ch);
        elseif n==2
                c = imresize(corn, 0.8);
                 imshow(c);
        elseif n==3
                    o = imresize(onion, 0.8);
                    imshow(o);
        elseif n==4
                        t= imresize(tomato, 0.8);
                        imshow(t);
                    else
                        X = 'invalid choice above';
                        disp(X);
        end
    end
                    if n2==3
        if n==1
            imshow(cheese);
        elseif n==2
                 imshow(corn);
        elseif n==3
                    imshow(onion);
        elseif n==4
                        imshow(tomato);
        else
                        X = 'invalid choice above';
                        disp(X);
                    end
                    end 

T = 'Whats your choice of beverage? 1. Pepsi 2. Coke 3. Others ';
disp(T);

n3 = input ('Enter your choice');

 if n3==1
     pep = imread('pepsi.png');
     imshow(pep);
 end
 
  if n3==2
     cok = imread('coke.jpeg');
     imshow(cok);
  end
 
   if n3==3
    oth = imread('others.jpeg');
     imshow(oth);
   end
 
  T =' Thank you for your order! You may now track your order';
