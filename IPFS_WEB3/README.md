# IPFS.

<a href = "https://ipfs.io/">IPFS home</a>

After creating the folders "export" and "data" get the paths and run

<code>docker run -d --name ipfs -v /c/Users/coldc/Documents/github_jinb/Blockchain_Dev_Nanodegree/IPFS_WEB3/export:/export -v /c/Users/coldc/Documents/github_jinb/Blockchain_Dev_Nanodegree/IPFS_WEB3/data:/data/ipfs -p 4001:4001 -p 4001:4001/udp -p 8080:8080 -p 5001:5001 ipfs/go-ipfs:latest</code>


Watch the ipfs log <code>docker logs "container id"</code>

in my case the WebUI is at <code>http://127.0.0.1:5001/webui</code>

Enter the container terminal <code>docker exec -it "container id" sh</code>

Stop the container <code>docker stop "container id"</code>

Enter this folder \Program Files\Git\data\ipfs <code> cd "\Program Files\Git\data\ipfs"</code>




