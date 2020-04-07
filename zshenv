# Environment variables

# Man path
export MANPATH="/usr/local/man:$MANPATH"

# Set vim as default text editor
export EDITOR="vim"

# custom bin folder
if [ -d "$HOME/bin" ]; then
    export PATH=$HOME/bin:$PATH
fi

# Default python bins as python3 bins
export PATH=/usr/local/opt/python/libexec/bin/:$PATH

# C++/clang
# export PATH="/usr/local/opt/llvm/bin:$PATH"

# Pour SRA-toolkit (https://github.com/ncbi/sra-tools/wiki/Building-and-Installing-from-Source)
# export LD_LIBRARY_PATH=/usr/local/ngs/ngs-sdk/lib64:$LD_LIBRARY_PATH
# export NGS_LIBDIR=/usr/local/ngs/ngs-sdk/lib64
# export CLASSPATH=/usr/local/ngs/ngs-java/jar/ngs-java.jar:$CLASSPATH
#
#command Num setnumber
#command Num "set nonumber

