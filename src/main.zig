const std = @import("std");

const print = std.debug.print;

const ChessBoard = struct {
    pieces: [64]Piece,

    const Piece = enum {
        None,
        White_King,
        White_Queen,
        White_Rook,
        White_Bishop,
        White_Knight,
        White_Pawn,
        Black_King,
        Black_Queen,
        Black_Rook,
        Black_Bishop,
        Black_Knight,
        Black_Pawn,
    };

    pub fn newChessBoard() ChessBoard {
        return ChessBoard{
            .pieces = [_]Piece{
                Piece.Black_Rook, Piece.Black_Knight, Piece.Black_Bishop, Piece.Black_Queen, Piece.Black_King, Piece.Black_Bishop, Piece.Black_Knight, Piece.Black_Rook,
                Piece.Black_Pawn, Piece.Black_Pawn,   Piece.Black_Pawn,   Piece.Black_Pawn,  Piece.Black_Pawn, Piece.Black_Pawn,   Piece.Black_Pawn,   Piece.Black_Pawn,
                Piece.None,       Piece.None,         Piece.None,         Piece.None,        Piece.None,       Piece.None,         Piece.None,         Piece.None,
                Piece.None,       Piece.None,         Piece.None,         Piece.None,        Piece.None,       Piece.None,         Piece.None,         Piece.None,
                Piece.None,       Piece.None,         Piece.None,         Piece.None,        Piece.None,       Piece.None,         Piece.None,         Piece.None,
                Piece.None,       Piece.None,         Piece.None,         Piece.None,        Piece.None,       Piece.None,         Piece.None,         Piece.None,
                Piece.White_Pawn, Piece.White_Pawn,   Piece.White_Pawn,   Piece.White_Pawn,  Piece.White_Pawn, Piece.White_Pawn,   Piece.White_Pawn,   Piece.White_Pawn,
                Piece.White_Rook, Piece.White_Knight, Piece.White_Bishop, Piece.White_Queen, Piece.White_King, Piece.White_Bishop, Piece.White_Knight, Piece.White_Rook,
            },
        };
    }
};

pub fn main() void {
    const board = ChessBoard.newChessBoard();
    for (0.., board.pieces) |i, piece| {
        switch (piece) {
            .None => print("o", .{}),
            .White_King => print("K", .{}),
            .White_Queen => print("Q", .{}),
            .White_Rook => print("R", .{}),
            .White_Bishop => print("B", .{}),
            .White_Knight => print("N", .{}),
            .White_Pawn => print("P", .{}),
            .Black_King => print("k", .{}),
            .Black_Queen => print("q", .{}),
            .Black_Rook => print("r", .{}),
            .Black_Bishop => print("b", .{}),
            .Black_Knight => print("n", .{}),
            .Black_Pawn => print("p", .{}),
        }
        if (i % 8 == 7) {
            print("\n", .{});
        }
    }
}
