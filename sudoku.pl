valid([]).
valid([Head|Tail]) :-
	valid(Tail),
        fd_all_different(Head).

sudoku(S11, S12, S13, S14,
               S21, S22, S23, S24,
               S31, S32, S33, S34,
               S41, S42, S43, S44,
               Board) :-

    Board = [S11, S12, S13, S14,
                    S21, S22, S23, S24,
                    S31, S32, S33, S34,
                    S41, S42, S43, S44],

    fd_domain(Board, 1, 4),

    Row1 = [S11, S12, S13, S14],
    Row2 = [S21, S22, S23, S24],
    Row3 = [S31, S32, S33, S34],
    Row4 = [S41, S42, S43, S44],

    Col1 = [S11, S21, S31, S41],
    Col2 = [S12, S22, S32, S42],
    Col3 = [S13, S23, S33, S43],
    Col4 = [S14, S24, S34, S44],

    Square1 = [S11, S12, S21, S22],
    Square2 = [S13, S14,  S23, S24],
    Square3 = [S31, S32, S41, S42],
    Square4 = [S33, S34, S43, S44],

    valid([Row1, Row2, Row3, Row4]),
    valid([Col1, Col2, Col3, Col4]),
    valid([Square1, Square2, Square3, Square4]).

% sudoku(_, _, 2, 3, _, _, _, _, _, _ ,_, _, 3,  4, _, _, Solution).
