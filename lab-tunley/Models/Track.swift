//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct


// TODO: Pt 1 - Create an extension with a mock tracks static var


// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}

struct Track {
    let trackName: String
    let artistName: String
    let artworkUrl100: URL
    // Detail properties
    let collectionName: String
    let primaryGenreName: String
    let releaseDate: Date
    let trackTimeMillis: Int
    
}

extension Track {
    static var mockTracks: [Track]  = [
        Track(trackName: "Tree Among Shrubs",
                  artistName: "Men I Trust",
                  artworkUrl100: URL(string:"https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/42/9a/55/429a556c-fc32-deba-4859-3bfbdef15369/859749102588_cover.jpg/100x100bb.jpg")!,
                 collectionName: "Untourable Album",
                 primaryGenreName: "Pop",
                  releaseDate: Date(),
                  trackTimeMillis: 188301),
            Track(trackName: "I Hope to Be Around",
                  artistName: "Men I Trust",
                  artworkUrl100: URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/dd/3e/fc/dd3efc16-a4d3-274a-5794-7a6920517e3e/859723951126_cover.jpg/100x100bb.jpg")!,
                  collectionName: "I Hope to Be Around - Single",
                  primaryGenreName: "Pop",
                   releaseDate: Date(),
                   trackTimeMillis: 205554),
            Track(trackName: "Norton Commander (Album V)",
                  artistName: "Men I Trust",
                  artworkUrl100: URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/36/56/4d/36564db2-693a-38c0-a520-89e1095c9ac0/artwork.jpg/100x100bb.jpg")!,
                  collectionName: "Oncle Jazz",
                  primaryGenreName: "Pop",
                   releaseDate: Date(),
                   trackTimeMillis: 206313)
    
        
        
        
        
        ]
}
