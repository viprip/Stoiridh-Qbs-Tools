////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                //
//            Copyright (C) 2015-2016 William McKIE                                               //
//                                                                                                //
//            This program is free software: you can redistribute it and/or modify                //
//            it under the terms of the GNU General Public License as published by                //
//            the Free Software Foundation, either version 3 of the License, or                   //
//            (at your option) any later version.                                                 //
//                                                                                                //
//            This program is distributed in the hope that it will be useful,                     //
//            but WITHOUT ANY WARRANTY; without even the implied warranty of                      //
//            MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                       //
//            GNU General Public License for more details.                                        //
//                                                                                                //
//            You should have received a copy of the GNU General Public License                   //
//            along with this program.  If not, see <http://www.gnu.org/licenses/>.               //
//                                                                                                //
////////////////////////////////////////////////////////////////////////////////////////////////////
import qbs 1.0
import qbs.FileInfo
import Stoiridh.Utils

Product {
    ////////////////////////////////////////////////////////////////////////////////////////////////
    //  Dependencies                                                                              //
    ////////////////////////////////////////////////////////////////////////////////////////////////
    Depends { name: 'StoiridhUtils'; submodules: ['Project', 'Qt.Documentation']}

    ////////////////////////////////////////////////////////////////////////////////////////////////
    //  Properties                                                                                //
    ////////////////////////////////////////////////////////////////////////////////////////////////
    property path installDocsDirectory: FileInfo.joinPaths(project.sourceDirectory, 'doc')
    property path projectDirectory: FileInfo.path(sourceDirectory)
    property path docSourceDirectory: FileInfo.joinPaths(sourceDirectory, 'src')
    property string projectVersion: "1.0.0"
    property string baseName

    ////////////////////////////////////////////////////////////////////////////////////////////////
    //  Configuration                                                                             //
    ////////////////////////////////////////////////////////////////////////////////////////////////
    StoiridhUtils.Qt.Documentation.baseName: baseName
    StoiridhUtils.Qt.Documentation.installDocsDirectory: installDocsDirectory
    StoiridhUtils.Qt.Documentation.projectDirectory: projectDirectory
    StoiridhUtils.Qt.Documentation.sourceDirectory: docSourceDirectory
    StoiridhUtils.Qt.Documentation.projectVersion: projectVersion

    StoiridhUtils.Qt.Documentation.installDirectory: {
        return FileInfo.joinPaths(qbs.installRoot, StoiridhUtils.Project.docDirectory)
    }

    /*! \internal */
    StoiridhUtils.Qt.Documentation.qbsSearchPaths: project.qbsSearchPaths

    ////////////////////////////////////////////////////////////////////////////////////////////////
    //  Sources                                                                                   //
    ////////////////////////////////////////////////////////////////////////////////////////////////
    files: ['src/*.qdoc']

    Group {
        name: "QDoc Configuration"
        fileTags: 'qdocconf-main'
        files: '*.qdocconf'
    }
}
