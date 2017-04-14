VERSION="$WERCKER_GOA_VERSION"

go get -u github.com/goadesign/goa
go get -u github.com/goadesign/goa/goagen

if [ "${VERSION}" != "" ]; then
    CURRENT_DIR=$(pwd)
    cd $GOPATH/src/github.com/goadesign/goa
    git checkout ${VERSION}
    go install github.com/goadesign/goa/goagen
    git branch
    cd $CURRENT_DIR
fi

goagen version

