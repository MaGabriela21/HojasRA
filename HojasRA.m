imFiles = dir ('C:/Users/Gabriela Sandoval/Documents/MATLAB/test/*.jpg');
n= length(imFiles)
%img = imread(imFiles(1).name)

for k = 1:length(imFiles)-1 
    img = imread(imFiles(k).name);
    
    [w,l] = size(img(:,:,1));
    for i= 1:w
        for j=1:l
            %test range of values
            if (65<img(i,j,1))&&(img(i,j,1)<200)
                if (100<img(i,j,2)) && (img(i,j,2)<255)
                    if (10<img(i,j,3)) && (img(i,j,3)<100)
                        img(i,j,:) = [255,255,255];
                    end
                end
            end
        end
    end
    
    imwrite(img,imFiles(k).name); 
end

