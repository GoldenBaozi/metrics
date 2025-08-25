# Use XeLaTeX as the compiler engine for CJK support
# $pdf_mode = 5;
# Use pdfLaTex for pure English document without EPS graphics
$pdf_mode = 1;
$xelatex = 'xelatex -interaction=nonstopmode -synctex=1 --shell-escape %O %S';
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 --shell-escape %O %S'
$default_file = ('main.pdf');
# Set the output directory for all generated files
$out_dir = './out';

# Set the directory for auxiliary files (can be the same as out_dir)
$aux_dir = './temp';

# Tell latexmk to look in the 'sty' directory for style files
$ENV{'TEXINPUTS'} = './src//:' . $ENV{'TEXINPUTS'};

# Clean up temporary files with 'latexmk -c'
@generated_exts = (@generated_exts, 'synctex.gz', 'syntex', 'fdb_latexmk');
$clean_ext = join ' ', @generated_exts;
$clean_ext = @generated_exts;
$clean_full_ext = 'dvi ps pdf'; # Add pdf to clean the final output too

# $force_mode = 1;
$preview_mode = 1;
# this is open for macos
# $pdf_previewer = 'open -a Skim %S';
$show_time = 1;
$view = 'pdf';
