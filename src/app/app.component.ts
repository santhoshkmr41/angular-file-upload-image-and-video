import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { FileUploader, FileSelectDirective } from 'ng2-file-upload/ng2-file-upload';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'File Upload';
  selectedFile: File;
  allFilesList: any = [];

  public uploader: FileUploader = new FileUploader({ url: 'http://demo.iamsanthoshkumar.com/service.php', itemAlias: 'file' });
  public apiURL = "http://demo.iamsanthoshkumar.com/service.php";

  constructor(public http: HttpClient) {

    this.getFiles();

  }

  ngOnInit() {
    this.uploader.onAfterAddingFile = (file) => { file.withCredentials = false; };
    this.uploader.onCompleteItem = (item: any, response: any, status: any, headers: any) => {
      // console.log('ImageUpload:uploaded:', item, status, response);
      alert('File uploaded successfully');
      this.getFiles();
    };
  }



  getFiles() {

    let url = this.apiURL + "?getFiles=1";

    this.http.get(url)
      .subscribe(result => {
        debugger;
        console.log(result); // handle event here
        this.allFilesList = result;
      });
  }

}
