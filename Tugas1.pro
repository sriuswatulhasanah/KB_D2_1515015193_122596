predicates
 nondeterm jenis(symbol,symbol) 
 nondeterm adalah(symbol,symbol) 
 nondeterm hidup(symbol,symbol)
 nondeterm dapat_berenang(symbol)

clauses
 jenis(vertebrata,hewan). % vertebrata adalah jenis hewan
 jenis(ikan,hewan).       % ikan adalah jenis hewan
 
 adalah(zebra,vertebrata). % zebra adalah jenis hewan vertebrata 
 adalah(kakap,ikan).       % kakap adalah jenis hewan ikan
 adalah(kerapu,ikan).      % kerapu adalah jenis hewan ikan
 
 hidup(zebra,di_darat). % zebra hidup didarat
 hidup(kakap,di_air).   % kakap hidup diair
 hidup(kerapu,di_air).  % kerapu hidup diair
 
 dapat_berenang(Y):-  % hewan(y) dapat berenang jika
 jenis(X,hewan),      % (x) jenis hewan
 adalah(Y,X),         % hewan(y) adalah jenis(x)
 hidup(Y,di_air).     % hewan(y) hidup diair

goal
 dapat_berenang(Ikan). % ikan apa yang dapat berenang
