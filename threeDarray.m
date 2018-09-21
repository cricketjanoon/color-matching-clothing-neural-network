 projectdir = 'D:\ClothingNeuralNetwork\abc';
          d = dir( fullfile(projectdir, '*.mat') );
          nn = length(d);
          for ii=1:nn
             datastruct = load( fullfile(projectdir, d(ii).name), 'map' );
             A = datastruct.map; 
             disp(d(ii).name)
             if ii == 1
               A1 = zeros(size(A,1), size(A,2), nn);
             end
             A1(:, :, ii) = A;
          end
          save('maps.mat','A1');
          