//
//  Symbols.swift
//

// MARK: System Symbols Support

/// A source of an image; this can be used to hold the image data that can be later converted to a native image resource.
public enum SymbolSource {
    /// An image that is represented by a system symbol
    case symbol(SystemSymbol)
    /// A string representing a vector image to load
    case svg(String)
    /// A type-erased native image, such as a `CGImage`, `CIImage`, `NSImage`, or `UIImage`
    case image(Any)
}


public extension SystemSymbol {
    var systemName: String { self.rawValue.dropFirst().description }
    var systemCharacter: Character { self.rawValue.first! }
}

/// An abstract symbol that can be rendered at runtime in a user interface
public enum SystemSymbol : String, CaseIterable, Hashable {
    /// 􀣺 applelogo
    case applelogo = "􀣺applelogo"
    /// 􀛢 50.square.fill
    case N50_square_fill = "􀛢50.square.fill"
    /// 􀛡 50.square
    case N50_square = "􀛡50.square"
    /// 􀚼 50.circle.fill
    case N50_circle_fill = "􀚼50.circle.fill"
    /// 􀚻 50.circle
    case N50_circle = "􀚻50.circle"
    /// 􀛠 49.square.fill
    case N49_square_fill = "􀛠49.square.fill"
    /// 􀛟 49.square
    case N49_square = "􀛟49.square"
    /// 􀚺 49.circle.fill
    case N49_circle_fill = "􀚺49.circle.fill"
    /// 􀚹 49.circle
    case N49_circle = "􀚹49.circle"
    /// 􀛞 48.square.fill
    case N48_square_fill = "􀛞48.square.fill"
    /// 􀛝 48.square
    case N48_square = "􀛝48.square"
    /// 􀚸 48.circle.fill
    case N48_circle_fill = "􀚸48.circle.fill"
    /// 􀚷 48.circle
    case N48_circle = "􀚷48.circle"
    /// 􀛜 47.square.fill
    case N47_square_fill = "􀛜47.square.fill"
    /// 􀛛 47.square
    case N47_square = "􀛛47.square"
    /// 􀚶 47.circle.fill
    case N47_circle_fill = "􀚶47.circle.fill"
    /// 􀚵 47.circle
    case N47_circle = "􀚵47.circle"
    /// 􀛚 46.square.fill
    case N46_square_fill = "􀛚46.square.fill"
    /// 􀛙 46.square
    case N46_square = "􀛙46.square"
    /// 􀚴 46.circle.fill
    case N46_circle_fill = "􀚴46.circle.fill"
    /// 􀚳 46.circle
    case N46_circle = "􀚳46.circle"
    /// 􀛘 45.square.fill
    case N45_square_fill = "􀛘45.square.fill"
    /// 􀛗 45.square
    case N45_square = "􀛗45.square"
    /// 􀚲 45.circle.fill
    case N45_circle_fill = "􀚲45.circle.fill"
    /// 􀚱 45.circle
    case N45_circle = "􀚱45.circle"
    /// 􀛖 44.square.fill
    case N44_square_fill = "􀛖44.square.fill"
    /// 􀛕 44.square
    case N44_square = "􀛕44.square"
    /// 􀚰 44.circle.fill
    case N44_circle_fill = "􀚰44.circle.fill"
    /// 􀚯 44.circle
    case N44_circle = "􀚯44.circle"
    /// 􀛔 43.square.fill
    case N43_square_fill = "􀛔43.square.fill"
    /// 􀛓 43.square
    case N43_square = "􀛓43.square"
    /// 􀚮 43.circle.fill
    case N43_circle_fill = "􀚮43.circle.fill"
    /// 􀚭 43.circle
    case N43_circle = "􀚭43.circle"
    /// 􀛒 42.square.fill
    case N42_square_fill = "􀛒42.square.fill"
    /// 􀛑 42.square
    case N42_square = "􀛑42.square"
    /// 􀚬 42.circle.fill
    case N42_circle_fill = "􀚬42.circle.fill"
    /// 􀚫 42.circle
    case N42_circle = "􀚫42.circle"
    /// 􀛐 41.square.fill
    case N41_square_fill = "􀛐41.square.fill"
    /// 􀛏 41.square
    case N41_square = "􀛏41.square"
    /// 􀚪 41.circle.fill
    case N41_circle_fill = "􀚪41.circle.fill"
    /// 􀚩 41.circle
    case N41_circle = "􀚩41.circle"
    /// 􀛎 40.square.fill
    case N40_square_fill = "􀛎40.square.fill"
    /// 􀛍 40.square
    case N40_square = "􀛍40.square"
    /// 􀚨 40.circle.fill
    case N40_circle_fill = "􀚨40.circle.fill"
    /// 􀚧 40.circle
    case N40_circle = "􀚧40.circle"
    /// 􀛌 39.square.fill
    case N39_square_fill = "􀛌39.square.fill"
    /// 􀛋 39.square
    case N39_square = "􀛋39.square"
    /// 􀚦 39.circle.fill
    case N39_circle_fill = "􀚦39.circle.fill"
    /// 􀚥 39.circle
    case N39_circle = "􀚥39.circle"
    /// 􀛊 38.square.fill
    case N38_square_fill = "􀛊38.square.fill"
    /// 􀛉 38.square
    case N38_square = "􀛉38.square"
    /// 􀚤 38.circle.fill
    case N38_circle_fill = "􀚤38.circle.fill"
    /// 􀚣 38.circle
    case N38_circle = "􀚣38.circle"
    /// 􀛈 37.square.fill
    case N37_square_fill = "􀛈37.square.fill"
    /// 􀛇 37.square
    case N37_square = "􀛇37.square"
    /// 􀚢 37.circle.fill
    case N37_circle_fill = "􀚢37.circle.fill"
    /// 􀚡 37.circle
    case N37_circle = "􀚡37.circle"
    /// 􀛆 36.square.fill
    case N36_square_fill = "􀛆36.square.fill"
    /// 􀛅 36.square
    case N36_square = "􀛅36.square"
    /// 􀚠 36.circle.fill
    case N36_circle_fill = "􀚠36.circle.fill"
    /// 􀚟 36.circle
    case N36_circle = "􀚟36.circle"
    /// 􀛄 35.square.fill
    case N35_square_fill = "􀛄35.square.fill"
    /// 􀛃 35.square
    case N35_square = "􀛃35.square"
    /// 􀚞 35.circle.fill
    case N35_circle_fill = "􀚞35.circle.fill"
    /// 􀚝 35.circle
    case N35_circle = "􀚝35.circle"
    /// 􀛂 34.square.fill
    case N34_square_fill = "􀛂34.square.fill"
    /// 􀛁 34.square
    case N34_square = "􀛁34.square"
    /// 􀚜 34.circle.fill
    case N34_circle_fill = "􀚜34.circle.fill"
    /// 􀚛 34.circle
    case N34_circle = "􀚛34.circle"
    /// 􀛀 33.square.fill
    case N33_square_fill = "􀛀33.square.fill"
    /// 􀚿 33.square
    case N33_square = "􀚿33.square"
    /// 􀚚 33.circle.fill
    case N33_circle_fill = "􀚚33.circle.fill"
    /// 􀚙 33.circle
    case N33_circle = "􀚙33.circle"
    /// 􀚾 32.square.fill
    case N32_square_fill = "􀚾32.square.fill"
    /// 􀚽 32.square
    case N32_square = "􀚽32.square"
    /// 􀚘 32.circle.fill
    case N32_circle_fill = "􀚘32.circle.fill"
    /// 􀚗 32.circle
    case N32_circle = "􀚗32.circle"
    /// 􀘣 31.square.fill
    case N31_square_fill = "􀘣31.square.fill"
    /// 􀘢 31.square
    case N31_square = "􀘢31.square"
    /// 􀘡 31.circle.fill
    case N31_circle_fill = "􀘡31.circle.fill"
    /// 􀘠 31.circle
    case N31_circle = "􀘠31.circle"
    /// 􀕦 30.square.fill
    case N30_square_fill = "􀕦30.square.fill"
    /// 􀕇 30.square
    case N30_square = "􀕇30.square"
    /// 􀔨 30.circle.fill
    case N30_circle_fill = "􀔨30.circle.fill"
    /// 􀔉 30.circle
    case N30_circle = "􀔉30.circle"
    /// 􀕥 29.square.fill
    case N29_square_fill = "􀕥29.square.fill"
    /// 􀕆 29.square
    case N29_square = "􀕆29.square"
    /// 􀔧 29.circle.fill
    case N29_circle_fill = "􀔧29.circle.fill"
    /// 􀔈 29.circle
    case N29_circle = "􀔈29.circle"
    /// 􀕤 28.square.fill
    case N28_square_fill = "􀕤28.square.fill"
    /// 􀕅 28.square
    case N28_square = "􀕅28.square"
    /// 􀔦 28.circle.fill
    case N28_circle_fill = "􀔦28.circle.fill"
    /// 􀔇 28.circle
    case N28_circle = "􀔇28.circle"
    /// 􀕣 27.square.fill
    case N27_square_fill = "􀕣27.square.fill"
    /// 􀕄 27.square
    case N27_square = "􀕄27.square"
    /// 􀔥 27.circle.fill
    case N27_circle_fill = "􀔥27.circle.fill"
    /// 􀔆 27.circle
    case N27_circle = "􀔆27.circle"
    /// 􀕢 26.square.fill
    case N26_square_fill = "􀕢26.square.fill"
    /// 􀕃 26.square
    case N26_square = "􀕃26.square"
    /// 􀔤 26.circle.fill
    case N26_circle_fill = "􀔤26.circle.fill"
    /// 􀔅 26.circle
    case N26_circle = "􀔅26.circle"
    /// 􀕡 25.square.fill
    case N25_square_fill = "􀕡25.square.fill"
    /// 􀕂 25.square
    case N25_square = "􀕂25.square"
    /// 􀔣 25.circle.fill
    case N25_circle_fill = "􀔣25.circle.fill"
    /// 􀔄 25.circle
    case N25_circle = "􀔄25.circle"
    /// 􀕠 24.square.fill
    case N24_square_fill = "􀕠24.square.fill"
    /// 􀕁 24.square
    case N24_square = "􀕁24.square"
    /// 􀔢 24.circle.fill
    case N24_circle_fill = "􀔢24.circle.fill"
    /// 􀔃 24.circle
    case N24_circle = "􀔃24.circle"
    /// 􀕟 23.square.fill
    case N23_square_fill = "􀕟23.square.fill"
    /// 􀕀 23.square
    case N23_square = "􀕀23.square"
    /// 􀔡 23.circle.fill
    case N23_circle_fill = "􀔡23.circle.fill"
    /// 􀔂 23.circle
    case N23_circle = "􀔂23.circle"
    /// 􀕞 22.square.fill
    case N22_square_fill = "􀕞22.square.fill"
    /// 􀔿 22.square
    case N22_square = "􀔿22.square"
    /// 􀔠 22.circle.fill
    case N22_circle_fill = "􀔠22.circle.fill"
    /// 􀔁 22.circle
    case N22_circle = "􀔁22.circle"
    /// 􀕝 21.square.fill
    case N21_square_fill = "􀕝21.square.fill"
    /// 􀔾 21.square
    case N21_square = "􀔾21.square"
    /// 􀔟 21.circle.fill
    case N21_circle_fill = "􀔟21.circle.fill"
    /// 􀔀 21.circle
    case N21_circle = "􀔀21.circle"
    /// 􀕜 20.square.fill
    case N20_square_fill = "􀕜20.square.fill"
    /// 􀔽 20.square
    case N20_square = "􀔽20.square"
    /// 􀔞 20.circle.fill
    case N20_circle_fill = "􀔞20.circle.fill"
    /// 􀓿 20.circle
    case N20_circle = "􀓿20.circle"
    /// 􀕛 19.square.fill
    case N19_square_fill = "􀕛19.square.fill"
    /// 􀔼 19.square
    case N19_square = "􀔼19.square"
    /// 􀔝 19.circle.fill
    case N19_circle_fill = "􀔝19.circle.fill"
    /// 􀓾 19.circle
    case N19_circle = "􀓾19.circle"
    /// 􀕚 18.square.fill
    case N18_square_fill = "􀕚18.square.fill"
    /// 􀔻 18.square
    case N18_square = "􀔻18.square"
    /// 􀔜 18.circle.fill
    case N18_circle_fill = "􀔜18.circle.fill"
    /// 􀓽 18.circle
    case N18_circle = "􀓽18.circle"
    /// 􀕙 17.square.fill
    case N17_square_fill = "􀕙17.square.fill"
    /// 􀔺 17.square
    case N17_square = "􀔺17.square"
    /// 􀔛 17.circle.fill
    case N17_circle_fill = "􀔛17.circle.fill"
    /// 􀓼 17.circle
    case N17_circle = "􀓼17.circle"
    /// 􀕘 16.square.fill
    case N16_square_fill = "􀕘16.square.fill"
    /// 􀔹 16.square
    case N16_square = "􀔹16.square"
    /// 􀔚 16.circle.fill
    case N16_circle_fill = "􀔚16.circle.fill"
    /// 􀓻 16.circle
    case N16_circle = "􀓻16.circle"
    /// 􀕗 15.square.fill
    case N15_square_fill = "􀕗15.square.fill"
    /// 􀔸 15.square
    case N15_square = "􀔸15.square"
    /// 􀔙 15.circle.fill
    case N15_circle_fill = "􀔙15.circle.fill"
    /// 􀓺 15.circle
    case N15_circle = "􀓺15.circle"
    /// 􀕖 14.square.fill
    case N14_square_fill = "􀕖14.square.fill"
    /// 􀔷 14.square
    case N14_square = "􀔷14.square"
    /// 􀔘 14.circle.fill
    case N14_circle_fill = "􀔘14.circle.fill"
    /// 􀓹 14.circle
    case N14_circle = "􀓹14.circle"
    /// 􀕕 13.square.fill
    case N13_square_fill = "􀕕13.square.fill"
    /// 􀔶 13.square
    case N13_square = "􀔶13.square"
    /// 􀔗 13.circle.fill
    case N13_circle_fill = "􀔗13.circle.fill"
    /// 􀓸 13.circle
    case N13_circle = "􀓸13.circle"
    /// 􀕔 12.square.fill
    case N12_square_fill = "􀕔12.square.fill"
    /// 􀔵 12.square
    case N12_square = "􀔵12.square"
    /// 􀔖 12.circle.fill
    case N12_circle_fill = "􀔖12.circle.fill"
    /// 􀓷 12.circle
    case N12_circle = "􀓷12.circle"
    /// 􀕓 11.square.fill
    case N11_square_fill = "􀕓11.square.fill"
    /// 􀔴 11.square
    case N11_square = "􀔴11.square"
    /// 􀔕 11.circle.fill
    case N11_circle_fill = "􀔕11.circle.fill"
    /// 􀓶 11.circle
    case N11_circle = "􀓶11.circle"
    /// 􀕒 10.square.fill
    case N10_square_fill = "􀕒10.square.fill"
    /// 􀔳 10.square
    case N10_square = "􀔳10.square"
    /// 􀔔 10.circle.fill
    case N10_circle_fill = "􀔔10.circle.fill"
    /// 􀓵 10.circle
    case N10_circle = "􀓵10.circle"
    /// 􀕑 09.square.fill
    case N09_square_fill = "􀕑09.square.fill"
    /// 􀔲 09.square
    case N09_square = "􀔲09.square"
    /// 􀔓 09.circle.fill
    case N09_circle_fill = "􀔓09.circle.fill"
    /// 􀓴 09.circle
    case N09_circle = "􀓴09.circle"
    /// 􀕐 08.square.fill
    case N08_square_fill = "􀕐08.square.fill"
    /// 􀔱 08.square
    case N08_square = "􀔱08.square"
    /// 􀔒 08.circle.fill
    case N08_circle_fill = "􀔒08.circle.fill"
    /// 􀓳 08.circle
    case N08_circle = "􀓳08.circle"
    /// 􀕏 07.square.fill
    case N07_square_fill = "􀕏07.square.fill"
    /// 􀔰 07.square
    case N07_square = "􀔰07.square"
    /// 􀔑 07.circle.fill
    case N07_circle_fill = "􀔑07.circle.fill"
    /// 􀓲 07.circle
    case N07_circle = "􀓲07.circle"
    /// 􀕎 06.square.fill
    case N06_square_fill = "􀕎06.square.fill"
    /// 􀔯 06.square
    case N06_square = "􀔯06.square"
    /// 􀔐 06.circle.fill
    case N06_circle_fill = "􀔐06.circle.fill"
    /// 􀓱 06.circle
    case N06_circle = "􀓱06.circle"
    /// 􀕍 05.square.fill
    case N05_square_fill = "􀕍05.square.fill"
    /// 􀔮 05.square
    case N05_square = "􀔮05.square"
    /// 􀔏 05.circle.fill
    case N05_circle_fill = "􀔏05.circle.fill"
    /// 􀓰 05.circle
    case N05_circle = "􀓰05.circle"
    /// 􀕌 04.square.fill
    case N04_square_fill = "􀕌04.square.fill"
    /// 􀔭 04.square
    case N04_square = "􀔭04.square"
    /// 􀔎 04.circle.fill
    case N04_circle_fill = "􀔎04.circle.fill"
    /// 􀓯 04.circle
    case N04_circle = "􀓯04.circle"
    /// 􀕋 03.square.fill
    case N03_square_fill = "􀕋03.square.fill"
    /// 􀔬 03.square
    case N03_square = "􀔬03.square"
    /// 􀔍 03.circle.fill
    case N03_circle_fill = "􀔍03.circle.fill"
    /// 􀓮 03.circle
    case N03_circle = "􀓮03.circle"
    /// 􀕊 02.square.fill
    case N02_square_fill = "􀕊02.square.fill"
    /// 􀔫 02.square
    case N02_square = "􀔫02.square"
    /// 􀔌 02.circle.fill
    case N02_circle_fill = "􀔌02.circle.fill"
    /// 􀓭 02.circle
    case N02_circle = "􀓭02.circle"
    /// 􀕉 01.square.fill
    case N01_square_fill = "􀕉01.square.fill"
    /// 􀔪 01.square
    case N01_square = "􀔪01.square"
    /// 􀔋 01.circle.fill
    case N01_circle_fill = "􀔋01.circle.fill"
    /// 􀓬 01.circle
    case N01_circle = "􀓬01.circle"
    /// 􀕈 00.square.fill
    case N00_square_fill = "􀕈00.square.fill"
    /// 􀔩 00.square
    case N00_square = "􀔩00.square"
    /// 􀔊 00.circle.fill
    case N00_circle_fill = "􀔊00.circle.fill"
    /// 􀓫 00.circle
    case N00_circle = "􀓫00.circle"
    /// 􀑸 9.alt.square.fill
    case N9_alt_square_fill = "􀑸9.alt.square.fill"
    /// 􀑷 9.alt.square
    case N9_alt_square = "􀑷9.alt.square"
    /// 􀑴 9.alt.circle.fill
    case N9_alt_circle_fill = "􀑴9.alt.circle.fill"
    /// 􀑳 9.alt.circle
    case N9_alt_circle = "􀑳9.alt.circle"
    /// 􀃛 9.square.fill
    case N9_square_fill = "􀃛9.square.fill"
    /// 􀃚 9.square
    case N9_square = "􀃚9.square"
    /// 􀁋 9.circle.fill
    case N9_circle_fill = "􀁋9.circle.fill"
    /// 􀁊 9.circle
    case N9_circle = "􀁊9.circle"
    /// 􀃙 8.square.fill
    case N8_square_fill = "􀃙8.square.fill"
    /// 􀃘 8.square
    case N8_square = "􀃘8.square"
    /// 􀁉 8.circle.fill
    case N8_circle_fill = "􀁉8.circle.fill"
    /// 􀁈 8.circle
    case N8_circle = "􀁈8.circle"
    /// 􀃗 7.square.fill
    case N7_square_fill = "􀃗7.square.fill"
    /// 􀃖 7.square
    case N7_square = "􀃖7.square"
    /// 􀁇 7.circle.fill
    case N7_circle_fill = "􀁇7.circle.fill"
    /// 􀁆 7.circle
    case N7_circle = "􀁆7.circle"
    /// 􀑶 6.alt.square.fill
    case N6_alt_square_fill = "􀑶6.alt.square.fill"
    /// 􀑵 6.alt.square
    case N6_alt_square = "􀑵6.alt.square"
    /// 􀑲 6.alt.circle.fill
    case N6_alt_circle_fill = "􀑲6.alt.circle.fill"
    /// 􀑱 6.alt.circle
    case N6_alt_circle = "􀑱6.alt.circle"
    /// 􀃕 6.square.fill
    case N6_square_fill = "􀃕6.square.fill"
    /// 􀃔 6.square
    case N6_square = "􀃔6.square"
    /// 􀁅 6.circle.fill
    case N6_circle_fill = "􀁅6.circle.fill"
    /// 􀁄 6.circle
    case N6_circle = "􀁄6.circle"
    /// 􀃓 5.square.fill
    case N5_square_fill = "􀃓5.square.fill"
    /// 􀃒 5.square
    case N5_square = "􀃒5.square"
    /// 􀁃 5.circle.fill
    case N5_circle_fill = "􀁃5.circle.fill"
    /// 􀁂 5.circle
    case N5_circle = "􀁂5.circle"
    /// 􀘚 4.alt.square.fill
    case N4_alt_square_fill = "􀘚4.alt.square.fill"
    /// 􀘙 4.alt.square
    case N4_alt_square = "􀘙4.alt.square"
    /// 􀘘 4.alt.circle.fill
    case N4_alt_circle_fill = "􀘘4.alt.circle.fill"
    /// 􀘗 4.alt.circle
    case N4_alt_circle = "􀘗4.alt.circle"
    /// 􀃑 4.square.fill
    case N4_square_fill = "􀃑4.square.fill"
    /// 􀃐 4.square
    case N4_square = "􀃐4.square"
    /// 􀁁 4.circle.fill
    case N4_circle_fill = "􀁁4.circle.fill"
    /// 􀁀 4.circle
    case N4_circle = "􀁀4.circle"
    /// 􀃏 3.square.fill
    case N3_square_fill = "􀃏3.square.fill"
    /// 􀃎 3.square
    case N3_square = "􀃎3.square"
    /// 􀀿 3.circle.fill
    case N3_circle_fill = "􀀿3.circle.fill"
    /// 􀀾 3.circle
    case N3_circle = "􀀾3.circle"
    /// 􀃍 2.square.fill
    case N2_square_fill = "􀃍2.square.fill"
    /// 􀃌 2.square
    case N2_square = "􀃌2.square"
    /// 􀀽 2.circle.fill
    case N2_circle_fill = "􀀽2.circle.fill"
    /// 􀀼 2.circle
    case N2_circle = "􀀼2.circle"
    /// 􀃋 1.square.fill
    case N1_square_fill = "􀃋1.square.fill"
    /// 􀃊 1.square
    case N1_square = "􀃊1.square"
    /// 􀀻 1.circle.fill
    case N1_circle_fill = "􀀻1.circle.fill"
    /// 􀀺 1.circle
    case N1_circle = "􀀺1.circle"
    /// 􀃉 0.square.fill
    case N0_square_fill = "􀃉0.square.fill"
    /// 􀃈 0.square
    case N0_square = "􀃈0.square"
    /// 􀀹 0.circle.fill
    case N0_circle_fill = "􀀹0.circle.fill"
    /// 􀀸 0.circle
    case N0_circle = "􀀸0.circle"
    /// 􀮳 brazilianrealsign.square.fill
    case brazilianrealsign_square_fill = "􀮳brazilianrealsign.square.fill"
    /// 􀮲 brazilianrealsign.square
    case brazilianrealsign_square = "􀮲brazilianrealsign.square"
    /// 􀮱 brazilianrealsign.circle.fill
    case brazilianrealsign_circle_fill = "􀮱brazilianrealsign.circle.fill"
    /// 􀮰 brazilianrealsign.circle
    case brazilianrealsign_circle = "􀮰brazilianrealsign.circle"
    /// 􀘖 bitcoinsign.square.fill
    case bitcoinsign_square_fill = "􀘖bitcoinsign.square.fill"
    /// 􀘕 bitcoinsign.square
    case bitcoinsign_square = "􀘕bitcoinsign.square"
    /// 􀗖 bitcoinsign.circle.fill
    case bitcoinsign_circle_fill = "􀗖bitcoinsign.circle.fill"
    /// 􀗕 bitcoinsign.circle
    case bitcoinsign_circle = "􀗕bitcoinsign.circle"
    /// 􀘔 larisign.square.fill
    case larisign_square_fill = "􀘔larisign.square.fill"
    /// 􀘓 larisign.square
    case larisign_square = "􀘓larisign.square"
    /// 􀗔 larisign.circle.fill
    case larisign_circle_fill = "􀗔larisign.circle.fill"
    /// 􀗓 larisign.circle
    case larisign_circle = "􀗓larisign.circle"
    /// 􀘒 bahtsign.square.fill
    case bahtsign_square_fill = "􀘒bahtsign.square.fill"
    /// 􀘑 bahtsign.square
    case bahtsign_square = "􀘑bahtsign.square"
    /// 􀗒 bahtsign.circle.fill
    case bahtsign_circle_fill = "􀗒bahtsign.circle.fill"
    /// 􀗑 bahtsign.circle
    case bahtsign_circle = "􀗑bahtsign.circle"
    /// 􀘐 rupeesign.square.fill
    case rupeesign_square_fill = "􀘐rupeesign.square.fill"
    /// 􀘏 rupeesign.square
    case rupeesign_square = "􀘏rupeesign.square"
    /// 􀗐 rupeesign.circle.fill
    case rupeesign_circle_fill = "􀗐rupeesign.circle.fill"
    /// 􀗏 rupeesign.circle
    case rupeesign_circle = "􀗏rupeesign.circle"
    /// 􀘎 manatsign.square.fill
    case manatsign_square_fill = "􀘎manatsign.square.fill"
    /// 􀘍 manatsign.square
    case manatsign_square = "􀘍manatsign.square"
    /// 􀗎 manatsign.circle.fill
    case manatsign_circle_fill = "􀗎manatsign.circle.fill"
    /// 􀗍 manatsign.circle
    case manatsign_circle = "􀗍manatsign.circle"
    /// 􀘌 shekelsign.square.fill
    case shekelsign_square_fill = "􀘌shekelsign.square.fill"
    /// 􀘋 shekelsign.square
    case shekelsign_square = "􀘋shekelsign.square"
    /// 􀗌 shekelsign.circle.fill
    case shekelsign_circle_fill = "􀗌shekelsign.circle.fill"
    /// 􀗋 shekelsign.circle
    case shekelsign_circle = "􀗋shekelsign.circle"
    /// 􀘊 millsign.square.fill
    case millsign_square_fill = "􀘊millsign.square.fill"
    /// 􀘉 millsign.square
    case millsign_square = "􀘉millsign.square"
    /// 􀗊 millsign.circle.fill
    case millsign_circle_fill = "􀗊millsign.circle.fill"
    /// 􀗉 millsign.circle
    case millsign_circle = "􀗉millsign.circle"
    /// 􀘈 tugriksign.square.fill
    case tugriksign_square_fill = "􀘈tugriksign.square.fill"
    /// 􀘇 tugriksign.square
    case tugriksign_square = "􀘇tugriksign.square"
    /// 􀗈 tugriksign.circle.fill
    case tugriksign_circle_fill = "􀗈tugriksign.circle.fill"
    /// 􀗇 tugriksign.circle
    case tugriksign_circle = "􀗇tugriksign.circle"
    /// 􀘆 cruzeirosign.square.fill
    case cruzeirosign_square_fill = "􀘆cruzeirosign.square.fill"
    /// 􀘅 cruzeirosign.square
    case cruzeirosign_square = "􀘅cruzeirosign.square"
    /// 􀗆 cruzeirosign.circle.fill
    case cruzeirosign_circle_fill = "􀗆cruzeirosign.circle.fill"
    /// 􀗅 cruzeirosign.circle
    case cruzeirosign_circle = "􀗅cruzeirosign.circle"
    /// 􀘄 cedisign.square.fill
    case cedisign_square_fill = "􀘄cedisign.square.fill"
    /// 􀘃 cedisign.square
    case cedisign_square = "􀘃cedisign.square"
    /// 􀗄 cedisign.circle.fill
    case cedisign_circle_fill = "􀗄cedisign.circle.fill"
    /// 􀗃 cedisign.circle
    case cedisign_circle = "􀗃cedisign.circle"
    /// 􀘂 coloncurrencysign.square.fill
    case coloncurrencysign_square_fill = "􀘂coloncurrencysign.square.fill"
    /// 􀘁 coloncurrencysign.square
    case coloncurrencysign_square = "􀘁coloncurrencysign.square"
    /// 􀗂 coloncurrencysign.circle.fill
    case coloncurrencysign_circle_fill = "􀗂coloncurrencysign.circle.fill"
    /// 􀗁 coloncurrencysign.circle
    case coloncurrencysign_circle = "􀗁coloncurrencysign.circle"
    /// 􀘀 guaranisign.square.fill
    case guaranisign_square_fill = "􀘀guaranisign.square.fill"
    /// 􀗿 guaranisign.square
    case guaranisign_square = "􀗿guaranisign.square"
    /// 􀗀 guaranisign.circle.fill
    case guaranisign_circle_fill = "􀗀guaranisign.circle.fill"
    /// 􀖿 guaranisign.circle
    case guaranisign_circle = "􀖿guaranisign.circle"
    /// 􀗾 nairasign.square.fill
    case nairasign_square_fill = "􀗾nairasign.square.fill"
    /// 􀗽 nairasign.square
    case nairasign_square = "􀗽nairasign.square"
    /// 􀖾 nairasign.circle.fill
    case nairasign_circle_fill = "􀖾nairasign.circle.fill"
    /// 􀖽 nairasign.circle
    case nairasign_circle = "􀖽nairasign.circle"
    /// 􀗼 hryvniasign.square.fill
    case hryvniasign_square_fill = "􀗼hryvniasign.square.fill"
    /// 􀗻 hryvniasign.square
    case hryvniasign_square = "􀗻hryvniasign.square"
    /// 􀖼 hryvniasign.circle.fill
    case hryvniasign_circle_fill = "􀖼hryvniasign.circle.fill"
    /// 􀖻 hryvniasign.circle
    case hryvniasign_circle = "􀖻hryvniasign.circle"
    /// 􀗺 australsign.square.fill
    case australsign_square_fill = "􀗺australsign.square.fill"
    /// 􀗹 australsign.square
    case australsign_square = "􀗹australsign.square"
    /// 􀖺 australsign.circle.fill
    case australsign_circle_fill = "􀖺australsign.circle.fill"
    /// 􀖹 australsign.circle
    case australsign_circle = "􀖹australsign.circle"
    /// 􀗸 lirasign.square.fill
    case lirasign_square_fill = "􀗸lirasign.square.fill"
    /// 􀗷 lirasign.square
    case lirasign_square = "􀗷lirasign.square"
    /// 􀖸 lirasign.circle.fill
    case lirasign_circle_fill = "􀖸lirasign.circle.fill"
    /// 􀖷 lirasign.circle
    case lirasign_circle = "􀖷lirasign.circle"
    /// 􀗶 wonsign.square.fill
    case wonsign_square_fill = "􀗶wonsign.square.fill"
    /// 􀗵 wonsign.square
    case wonsign_square = "􀗵wonsign.square"
    /// 􀖶 wonsign.circle.fill
    case wonsign_circle_fill = "􀖶wonsign.circle.fill"
    /// 􀖵 wonsign.circle
    case wonsign_circle = "􀖵wonsign.circle"
    /// 􀗴 kipsign.square.fill
    case kipsign_square_fill = "􀗴kipsign.square.fill"
    /// 􀗳 kipsign.square
    case kipsign_square = "􀗳kipsign.square"
    /// 􀖴 kipsign.circle.fill
    case kipsign_circle_fill = "􀖴kipsign.circle.fill"
    /// 􀖳 kipsign.circle
    case kipsign_circle = "􀖳kipsign.circle"
    /// 􀗲 pesosign.square.fill
    case pesosign_square_fill = "􀗲pesosign.square.fill"
    /// 􀗱 pesosign.square
    case pesosign_square = "􀗱pesosign.square"
    /// 􀖲 pesosign.circle.fill
    case pesosign_circle_fill = "􀖲pesosign.circle.fill"
    /// 􀖱 pesosign.circle
    case pesosign_circle = "􀖱pesosign.circle"
    /// 􀗰 pesetasign.square.fill
    case pesetasign_square_fill = "􀗰pesetasign.square.fill"
    /// 􀗯 pesetasign.square
    case pesetasign_square = "􀗯pesetasign.square"
    /// 􀖰 pesetasign.circle.fill
    case pesetasign_circle_fill = "􀖰pesetasign.circle.fill"
    /// 􀖯 pesetasign.circle
    case pesetasign_circle = "􀖯pesetasign.circle"
    /// 􀗮 tengesign.square.fill
    case tengesign_square_fill = "􀗮tengesign.square.fill"
    /// 􀗭 tengesign.square
    case tengesign_square = "􀗭tengesign.square"
    /// 􀖮 tengesign.circle.fill
    case tengesign_circle_fill = "􀖮tengesign.circle.fill"
    /// 􀖭 tengesign.circle
    case tengesign_circle = "􀖭tengesign.circle"
    /// 􀗬 indianrupeesign.square.fill
    case indianrupeesign_square_fill = "􀗬indianrupeesign.square.fill"
    /// 􀗫 indianrupeesign.square
    case indianrupeesign_square = "􀗫indianrupeesign.square"
    /// 􀖬 indianrupeesign.circle.fill
    case indianrupeesign_circle_fill = "􀖬indianrupeesign.circle.fill"
    /// 􀖫 indianrupeesign.circle
    case indianrupeesign_circle = "􀖫indianrupeesign.circle"
    /// 􀗪 dongsign.square.fill
    case dongsign_square_fill = "􀗪dongsign.square.fill"
    /// 􀗩 dongsign.square
    case dongsign_square = "􀗩dongsign.square"
    /// 􀖪 dongsign.circle.fill
    case dongsign_circle_fill = "􀖪dongsign.circle.fill"
    /// 􀖩 dongsign.circle
    case dongsign_circle = "􀖩dongsign.circle"
    /// 􀗨 eurosign.square.fill
    case eurosign_square_fill = "􀗨eurosign.square.fill"
    /// 􀗧 eurosign.square
    case eurosign_square = "􀗧eurosign.square"
    /// 􀖨 eurosign.circle.fill
    case eurosign_circle_fill = "􀖨eurosign.circle.fill"
    /// 􀖧 eurosign.circle
    case eurosign_circle = "􀖧eurosign.circle"
    /// 􀗦 rublesign.square.fill
    case rublesign_square_fill = "􀗦rublesign.square.fill"
    /// 􀗥 rublesign.square
    case rublesign_square = "􀗥rublesign.square"
    /// 􀖦 rublesign.circle.fill
    case rublesign_circle_fill = "􀖦rublesign.circle.fill"
    /// 􀖥 rublesign.circle
    case rublesign_circle = "􀖥rublesign.circle"
    /// 􀗤 turkishlirasign.square.fill
    case turkishlirasign_square_fill = "􀗤turkishlirasign.square.fill"
    /// 􀗣 turkishlirasign.square
    case turkishlirasign_square = "􀗣turkishlirasign.square"
    /// 􀖤 turkishlirasign.circle.fill
    case turkishlirasign_circle_fill = "􀖤turkishlirasign.circle.fill"
    /// 􀖣 turkishlirasign.circle
    case turkishlirasign_circle = "􀖣turkishlirasign.circle"
    /// 􀗢 florinsign.square.fill
    case florinsign_square_fill = "􀗢florinsign.square.fill"
    /// 􀗡 florinsign.square
    case florinsign_square = "􀗡florinsign.square"
    /// 􀖢 florinsign.circle.fill
    case florinsign_circle_fill = "􀖢florinsign.circle.fill"
    /// 􀖡 florinsign.circle
    case florinsign_circle = "􀖡florinsign.circle"
    /// 􀗠 francsign.square.fill
    case francsign_square_fill = "􀗠francsign.square.fill"
    /// 􀗟 francsign.square
    case francsign_square = "􀗟francsign.square"
    /// 􀖠 francsign.circle.fill
    case francsign_circle_fill = "􀖠francsign.circle.fill"
    /// 􀖟 francsign.circle
    case francsign_circle = "􀖟francsign.circle"
    /// 􀗞 sterlingsign.square.fill
    case sterlingsign_square_fill = "􀗞sterlingsign.square.fill"
    /// 􀗝 sterlingsign.square
    case sterlingsign_square = "􀗝sterlingsign.square"
    /// 􀖞 sterlingsign.circle.fill
    case sterlingsign_circle_fill = "􀖞sterlingsign.circle.fill"
    /// 􀖝 sterlingsign.circle
    case sterlingsign_circle = "􀖝sterlingsign.circle"
    /// 􀗜 yensign.square.fill
    case yensign_square_fill = "􀗜yensign.square.fill"
    /// 􀗛 yensign.square
    case yensign_square = "􀗛yensign.square"
    /// 􀖜 yensign.circle.fill
    case yensign_circle_fill = "􀖜yensign.circle.fill"
    /// 􀖛 yensign.circle
    case yensign_circle = "􀖛yensign.circle"
    /// 􀗚 centsign.square.fill
    case centsign_square_fill = "􀗚centsign.square.fill"
    /// 􀗙 centsign.square
    case centsign_square = "􀗙centsign.square"
    /// 􀖚 centsign.circle.fill
    case centsign_circle_fill = "􀖚centsign.circle.fill"
    /// 􀖙 centsign.circle
    case centsign_circle = "􀖙centsign.circle"
    /// 􀗘 dollarsign.square.fill
    case dollarsign_square_fill = "􀗘dollarsign.square.fill"
    /// 􀗗 dollarsign.square
    case dollarsign_square = "􀗗dollarsign.square"
    /// 􀖘 dollarsign.circle.fill
    case dollarsign_circle_fill = "􀖘dollarsign.circle.fill"
    /// 􀖗 dollarsign.circle
    case dollarsign_circle = "􀖗dollarsign.circle"
    /// 􀃇 z.square.fill
    case z_square_fill = "􀃇z.square.fill"
    /// 􀃆 z.square
    case z_square = "􀃆z.square"
    /// 􀀷 z.circle.fill
    case z_circle_fill = "􀀷z.circle.fill"
    /// 􀀶 z.circle
    case z_circle = "􀀶z.circle"
    /// 􀃅 y.square.fill
    case y_square_fill = "􀃅y.square.fill"
    /// 􀃄 y.square
    case y_square = "􀃄y.square"
    /// 􀀵 y.circle.fill
    case y_circle_fill = "􀀵y.circle.fill"
    /// 􀀴 y.circle
    case y_circle = "􀀴y.circle"
    /// 􀃃 x.square.fill
    case x_square_fill = "􀃃x.square.fill"
    /// 􀃂 x.square
    case x_square = "􀃂x.square"
    /// 􀀳 x.circle.fill
    case x_circle_fill = "􀀳x.circle.fill"
    /// 􀀲 x.circle
    case x_circle = "􀀲x.circle"
    /// 􀃁 w.square.fill
    case w_square_fill = "􀃁w.square.fill"
    /// 􀃀 w.square
    case w_square = "􀃀w.square"
    /// 􀀱 w.circle.fill
    case w_circle_fill = "􀀱w.circle.fill"
    /// 􀀰 w.circle
    case w_circle = "􀀰w.circle"
    /// 􀂿 v.square.fill
    case v_square_fill = "􀂿v.square.fill"
    /// 􀂾 v.square
    case v_square = "􀂾v.square"
    /// 􀀯 v.circle.fill
    case v_circle_fill = "􀀯v.circle.fill"
    /// 􀀮 v.circle
    case v_circle = "􀀮v.circle"
    /// 􀂽 u.square.fill
    case u_square_fill = "􀂽u.square.fill"
    /// 􀂼 u.square
    case u_square = "􀂼u.square"
    /// 􀀭 u.circle.fill
    case u_circle_fill = "􀀭u.circle.fill"
    /// 􀀬 u.circle
    case u_circle = "􀀬u.circle"
    /// 􀂻 t.square.fill
    case t_square_fill = "􀂻t.square.fill"
    /// 􀂺 t.square
    case t_square = "􀂺t.square"
    /// 􀀫 t.circle.fill
    case t_circle_fill = "􀀫t.circle.fill"
    /// 􀀪 t.circle
    case t_circle = "􀀪t.circle"
    /// 􀂹 s.square.fill
    case s_square_fill = "􀂹s.square.fill"
    /// 􀂸 s.square
    case s_square = "􀂸s.square"
    /// 􀀩 s.circle.fill
    case s_circle_fill = "􀀩s.circle.fill"
    /// 􀀨 s.circle
    case s_circle = "􀀨s.circle"
    /// 􀂷 r.square.fill
    case r_square_fill = "􀂷r.square.fill"
    /// 􀂶 r.square
    case r_square = "􀂶r.square"
    /// 􀀧 r.circle.fill
    case r_circle_fill = "􀀧r.circle.fill"
    /// 􀀦 r.circle
    case r_circle = "􀀦r.circle"
    /// 􀂵 q.square.fill
    case q_square_fill = "􀂵q.square.fill"
    /// 􀂴 q.square
    case q_square = "􀂴q.square"
    /// 􀀥 q.circle.fill
    case q_circle_fill = "􀀥q.circle.fill"
    /// 􀀤 q.circle
    case q_circle = "􀀤q.circle"
    /// 􀂳 p.square.fill
    case p_square_fill = "􀂳p.square.fill"
    /// 􀂲 p.square
    case p_square = "􀂲p.square"
    /// 􀀣 p.circle.fill
    case p_circle_fill = "􀀣p.circle.fill"
    /// 􀀢 p.circle
    case p_circle = "􀀢p.circle"
    /// 􀂱 o.square.fill
    case o_square_fill = "􀂱o.square.fill"
    /// 􀂰 o.square
    case o_square = "􀂰o.square"
    /// 􀀡 o.circle.fill
    case o_circle_fill = "􀀡o.circle.fill"
    /// 􀀠 o.circle
    case o_circle = "􀀠o.circle"
    /// 􀂯 n.square.fill
    case n_square_fill = "􀂯n.square.fill"
    /// 􀂮 n.square
    case n_square = "􀂮n.square"
    /// 􀀟 n.circle.fill
    case n_circle_fill = "􀀟n.circle.fill"
    /// 􀀞 n.circle
    case n_circle = "􀀞n.circle"
    /// 􀂭 m.square.fill
    case m_square_fill = "􀂭m.square.fill"
    /// 􀂬 m.square
    case m_square = "􀂬m.square"
    /// 􀀝 m.circle.fill
    case m_circle_fill = "􀀝m.circle.fill"
    /// 􀀜 m.circle
    case m_circle = "􀀜m.circle"
    /// 􀂫 l.square.fill
    case l_square_fill = "􀂫l.square.fill"
    /// 􀂪 l.square
    case l_square = "􀂪l.square"
    /// 􀀛 l.circle.fill
    case l_circle_fill = "􀀛l.circle.fill"
    /// 􀀚 l.circle
    case l_circle = "􀀚l.circle"
    /// 􀂩 k.square.fill
    case k_square_fill = "􀂩k.square.fill"
    /// 􀂨 k.square
    case k_square = "􀂨k.square"
    /// 􀀙 k.circle.fill
    case k_circle_fill = "􀀙k.circle.fill"
    /// 􀀘 k.circle
    case k_circle = "􀀘k.circle"
    /// 􀂧 j.square.fill
    case j_square_fill = "􀂧j.square.fill"
    /// 􀂦 j.square
    case j_square = "􀂦j.square"
    /// 􀀗 j.circle.fill
    case j_circle_fill = "􀀗j.circle.fill"
    /// 􀀖 j.circle
    case j_circle = "􀀖j.circle"
    /// 􀂥 i.square.fill
    case i_square_fill = "􀂥i.square.fill"
    /// 􀂤 i.square
    case i_square = "􀂤i.square"
    /// 􀀕 i.circle.fill
    case i_circle_fill = "􀀕i.circle.fill"
    /// 􀀔 i.circle
    case i_circle = "􀀔i.circle"
    /// 􀂣 h.square.fill
    case h_square_fill = "􀂣h.square.fill"
    /// 􀂢 h.square
    case h_square = "􀂢h.square"
    /// 􀀓 h.circle.fill
    case h_circle_fill = "􀀓h.circle.fill"
    /// 􀀒 h.circle
    case h_circle = "􀀒h.circle"
    /// 􀂡 g.square.fill
    case g_square_fill = "􀂡g.square.fill"
    /// 􀂠 g.square
    case g_square = "􀂠g.square"
    /// 􀀑 g.circle.fill
    case g_circle_fill = "􀀑g.circle.fill"
    /// 􀀐 g.circle
    case g_circle = "􀀐g.circle"
    /// 􀂟 f.square.fill
    case f_square_fill = "􀂟f.square.fill"
    /// 􀂞 f.square
    case f_square = "􀂞f.square"
    /// 􀀏 f.circle.fill
    case f_circle_fill = "􀀏f.circle.fill"
    /// 􀀎 f.circle
    case f_circle = "􀀎f.circle"
    /// 􀂝 e.square.fill
    case e_square_fill = "􀂝e.square.fill"
    /// 􀂜 e.square
    case e_square = "􀂜e.square"
    /// 􀀍 e.circle.fill
    case e_circle_fill = "􀀍e.circle.fill"
    /// 􀀌 e.circle
    case e_circle = "􀀌e.circle"
    /// 􀂛 d.square.fill
    case d_square_fill = "􀂛d.square.fill"
    /// 􀂚 d.square
    case d_square = "􀂚d.square"
    /// 􀀋 d.circle.fill
    case d_circle_fill = "􀀋d.circle.fill"
    /// 􀀊 d.circle
    case d_circle = "􀀊d.circle"
    /// 􀂙 c.square.fill
    case c_square_fill = "􀂙c.square.fill"
    /// 􀂘 c.square
    case c_square = "􀂘c.square"
    /// 􀀉 c.circle.fill
    case c_circle_fill = "􀀉c.circle.fill"
    /// 􀀈 c.circle
    case c_circle = "􀀈c.circle"
    /// 􀂗 b.square.fill
    case b_square_fill = "􀂗b.square.fill"
    /// 􀂖 b.square
    case b_square = "􀂖b.square"
    /// 􀀇 b.circle.fill
    case b_circle_fill = "􀀇b.circle.fill"
    /// 􀀆 b.circle
    case b_circle = "􀀆b.circle"
    /// 􀂕 a.square.fill
    case a_square_fill = "􀂕a.square.fill"
    /// 􀂔 a.square
    case a_square = "􀂔a.square"
    /// 􀀅 a.circle.fill
    case a_circle_fill = "􀀅a.circle.fill"
    /// 􀀄 a.circle
    case a_circle = "􀀄a.circle"
    /// 􀕭 asterisk.circle.fill
    case asterisk_circle_fill = "􀕭asterisk.circle.fill"
    /// 􀕬 asterisk.circle
    case asterisk_circle = "􀕬asterisk.circle"
    /// 􀕨 slash.circle.fill
    case slash_circle_fill = "􀕨slash.circle.fill"
    /// 􀕧 slash.circle
    case slash_circle = "􀕧slash.circle"
    /// 􀃹 arrowtriangle.down.square.fill
    case arrowtriangle_down_square_fill = "􀃹arrowtriangle.down.square.fill"
    /// 􀃸 arrowtriangle.down.square
    case arrowtriangle_down_square = "􀃸arrowtriangle.down.square"
    /// 􀁩 arrowtriangle.down.circle.fill
    case arrowtriangle_down_circle_fill = "􀁩arrowtriangle.down.circle.fill"
    /// 􀁨 arrowtriangle.down.circle
    case arrowtriangle_down_circle = "􀁨arrowtriangle.down.circle"
    /// 􀄥 arrowtriangle.down.fill
    case arrowtriangle_down_fill = "􀄥arrowtriangle.down.fill"
    /// 􀓃 arrowtriangle.down
    case arrowtriangle_down = "􀓃arrowtriangle.down"
    /// 􀃷 arrowtriangle.up.square.fill
    case arrowtriangle_up_square_fill = "􀃷arrowtriangle.up.square.fill"
    /// 􀃶 arrowtriangle.up.square
    case arrowtriangle_up_square = "􀃶arrowtriangle.up.square"
    /// 􀁧 arrowtriangle.up.circle.fill
    case arrowtriangle_up_circle_fill = "􀁧arrowtriangle.up.circle.fill"
    /// 􀁦 arrowtriangle.up.circle
    case arrowtriangle_up_circle = "􀁦arrowtriangle.up.circle"
    /// 􀄤 arrowtriangle.up.fill
    case arrowtriangle_up_fill = "􀄤arrowtriangle.up.fill"
    /// 􀓂 arrowtriangle.up
    case arrowtriangle_up = "􀓂arrowtriangle.up"
    /// 􀰋 arrowtriangle.forward.square.fill
    case arrowtriangle_forward_square_fill = "􀰋arrowtriangle.forward.square.fill"
    /// 􀰊 arrowtriangle.forward.square
    case arrowtriangle_forward_square = "􀰊arrowtriangle.forward.square"
    /// 􀰉 arrowtriangle.forward.circle.fill
    case arrowtriangle_forward_circle_fill = "􀰉arrowtriangle.forward.circle.fill"
    /// 􀰈 arrowtriangle.forward.circle
    case arrowtriangle_forward_circle = "􀰈arrowtriangle.forward.circle"
    /// 􀰇 arrowtriangle.forward.fill
    case arrowtriangle_forward_fill = "􀰇arrowtriangle.forward.fill"
    /// 􀰆 arrowtriangle.forward
    case arrowtriangle_forward = "􀰆arrowtriangle.forward"
    /// 􀃽 arrowtriangle.right.square.fill
    case arrowtriangle_right_square_fill = "􀃽arrowtriangle.right.square.fill"
    /// 􀃼 arrowtriangle.right.square
    case arrowtriangle_right_square = "􀃼arrowtriangle.right.square"
    /// 􀁭 arrowtriangle.right.circle.fill
    case arrowtriangle_right_circle_fill = "􀁭arrowtriangle.right.circle.fill"
    /// 􀁬 arrowtriangle.right.circle
    case arrowtriangle_right_circle = "􀁬arrowtriangle.right.circle"
    /// 􀄧 arrowtriangle.right.fill
    case arrowtriangle_right_fill = "􀄧arrowtriangle.right.fill"
    /// 􀓅 arrowtriangle.right
    case arrowtriangle_right = "􀓅arrowtriangle.right"
    /// 􀰅 arrowtriangle.backward.square.fill
    case arrowtriangle_backward_square_fill = "􀰅arrowtriangle.backward.square.fill"
    /// 􀰄 arrowtriangle.backward.square
    case arrowtriangle_backward_square = "􀰄arrowtriangle.backward.square"
    /// 􀰃 arrowtriangle.backward.circle.fill
    case arrowtriangle_backward_circle_fill = "􀰃arrowtriangle.backward.circle.fill"
    /// 􀰂 arrowtriangle.backward.circle
    case arrowtriangle_backward_circle = "􀰂arrowtriangle.backward.circle"
    /// 􀰁 arrowtriangle.backward.fill
    case arrowtriangle_backward_fill = "􀰁arrowtriangle.backward.fill"
    /// 􀰀 arrowtriangle.backward
    case arrowtriangle_backward = "􀰀arrowtriangle.backward"
    /// 􀃻 arrowtriangle.left.square.fill
    case arrowtriangle_left_square_fill = "􀃻arrowtriangle.left.square.fill"
    /// 􀃺 arrowtriangle.left.square
    case arrowtriangle_left_square = "􀃺arrowtriangle.left.square"
    /// 􀁫 arrowtriangle.left.circle.fill
    case arrowtriangle_left_circle_fill = "􀁫arrowtriangle.left.circle.fill"
    /// 􀁪 arrowtriangle.left.circle
    case arrowtriangle_left_circle = "􀁪arrowtriangle.left.circle"
    /// 􀄦 arrowtriangle.left.fill
    case arrowtriangle_left_fill = "􀄦arrowtriangle.left.fill"
    /// 􀓄 arrowtriangle.left
    case arrowtriangle_left = "􀓄arrowtriangle.left"
    /// 􀙡 arrow.triangle.pull
    case arrow_triangle_pull = "􀙡arrow.triangle.pull"
    /// 􀙠 arrow.triangle.branch
    case arrow_triangle_branch = "􀙠arrow.triangle.branch"
    /// 􀖅 arrow.triangle.swap
    case arrow_triangle_swap = "􀖅arrow.triangle.swap"
    /// 􀖄 arrow.triangle.merge
    case arrow_triangle_merge = "􀖄arrow.triangle.merge"
    /// 􀟸 arrow.triangle.turn.up.right.circle.fill
    case arrow_triangle_turn_up_right_circle_fill = "􀟸arrow.triangle.turn.up.right.circle.fill"
    /// 􀟷 arrow.triangle.turn.up.right.circle
    case arrow_triangle_turn_up_right_circle = "􀟷arrow.triangle.turn.up.right.circle"
    /// 􀙟 arrow.triangle.turn.up.right.diamond.fill
    case arrow_triangle_turn_up_right_diamond_fill = "􀙟arrow.triangle.turn.up.right.diamond.fill"
    /// 􀙞 arrow.triangle.turn.up.right.diamond
    case arrow_triangle_turn_up_right_diamond = "􀙞arrow.triangle.turn.up.right.diamond"
    /// 􀙛 arrow.3.trianglepath
    case arrow_3_trianglepath = "􀙛arrow.3.trianglepath"
    /// 􀤖 arrow.triangle.capsulepath
    case arrow_triangle_capsulepath = "􀤖arrow.triangle.capsulepath"
    /// 􀢤 exclamationmark.arrow.triangle.2.circlepath
    case exclamationmark_arrow_triangle_2_circlepath = "􀢤exclamationmark.arrow.triangle.2.circlepath"
    /// 􀖋 arrow.triangle.2.circlepath.circle.fill
    case arrow_triangle_2_circlepath_circle_fill = "􀖋arrow.triangle.2.circlepath.circle.fill"
    /// 􀖊 arrow.triangle.2.circlepath.circle
    case arrow_triangle_2_circlepath_circle = "􀖊arrow.triangle.2.circlepath.circle"
    /// 􀊯 arrow.triangle.2.circlepath
    case arrow_triangle_2_circlepath = "􀊯arrow.triangle.2.circlepath"
    /// 􀅌 arrow.2.squarepath
    case arrow_2_squarepath = "􀅌arrow.2.squarepath"
    /// 􀅇 return
    case `return` = "􀅇return"
    /// 􀱽 arrow.down.forward.and.arrow.up.backward.circle.fill
    case arrow_down_forward_and_arrow_up_backward_circle_fill = "􀱽arrow.down.forward.and.arrow.up.backward.circle.fill"
    /// 􀱼 arrow.down.forward.and.arrow.up.backward.circle
    case arrow_down_forward_and_arrow_up_backward_circle = "􀱼arrow.down.forward.and.arrow.up.backward.circle"
    /// 􀱻 arrow.down.forward.and.arrow.up.backward
    case arrow_down_forward_and_arrow_up_backward = "􀱻arrow.down.forward.and.arrow.up.backward"
    /// 􀫟 arrow.down.right.and.arrow.up.left.circle.fill
    case arrow_down_right_and_arrow_up_left_circle_fill = "􀫟arrow.down.right.and.arrow.up.left.circle.fill"
    /// 􀫞 arrow.down.right.and.arrow.up.left.circle
    case arrow_down_right_and_arrow_up_left_circle = "􀫞arrow.down.right.and.arrow.up.left.circle"
    /// 􀅋 arrow.down.right.and.arrow.up.left
    case arrow_down_right_and_arrow_up_left = "􀅋arrow.down.right.and.arrow.up.left"
    /// 􀱸 arrow.up.backward.and.arrow.down.forward.circle.fill
    case arrow_up_backward_and_arrow_down_forward_circle_fill = "􀱸arrow.up.backward.and.arrow.down.forward.circle.fill"
    /// 􀱷 arrow.up.backward.and.arrow.down.forward.circle
    case arrow_up_backward_and_arrow_down_forward_circle = "􀱷arrow.up.backward.and.arrow.down.forward.circle"
    /// 􀱶 arrow.up.backward.and.arrow.down.forward
    case arrow_up_backward_and_arrow_down_forward = "􀱶arrow.up.backward.and.arrow.down.forward"
    /// 􀧜 arrow.up.left.and.arrow.down.right.circle.fill
    case arrow_up_left_and_arrow_down_right_circle_fill = "􀧜arrow.up.left.and.arrow.down.right.circle.fill"
    /// 􀧛 arrow.up.left.and.arrow.down.right.circle
    case arrow_up_left_and_arrow_down_right_circle = "􀧛arrow.up.left.and.arrow.down.right.circle"
    /// 􀅊 arrow.up.left.and.arrow.down.right
    case arrow_up_left_and_arrow_down_right = "􀅊arrow.up.left.and.arrow.down.right"
    /// 􀚄 arrow.counterclockwise.circle.fill
    case arrow_counterclockwise_circle_fill = "􀚄arrow.counterclockwise.circle.fill"
    /// 􀚃 arrow.counterclockwise.circle
    case arrow_counterclockwise_circle = "􀚃arrow.counterclockwise.circle"
    /// 􀅉 arrow.counterclockwise
    case arrow_counterclockwise = "􀅉arrow.counterclockwise"
    /// 􀚂 arrow.clockwise.circle.fill
    case arrow_clockwise_circle_fill = "􀚂arrow.clockwise.circle.fill"
    /// 􀚁 arrow.clockwise.circle
    case arrow_clockwise_circle = "􀚁arrow.clockwise.circle"
    /// 􀅈 arrow.clockwise
    case arrow_clockwise = "􀅈arrow.clockwise"
    /// 􀅀 arrow.down.to.line
    case arrow_down_to_line = "􀅀arrow.down.to.line"
    /// 􀅄 arrow.down.to.line.alt
    case arrow_down_to_line_alt = "􀅄arrow.down.to.line.alt"
    /// 􀄿 arrow.up.to.line
    case arrow_up_to_line = "􀄿arrow.up.to.line"
    /// 􀅃 arrow.up.to.line.alt
    case arrow_up_to_line_alt = "􀅃arrow.up.to.line.alt"
    /// 􀅂 arrow.right.to.line
    case arrow_right_to_line = "􀅂arrow.right.to.line"
    /// 􀅆 arrow.right.to.line.alt
    case arrow_right_to_line_alt = "􀅆arrow.right.to.line.alt"
    /// 􀅁 arrow.left.to.line
    case arrow_left_to_line = "􀅁arrow.left.to.line"
    /// 􀅅 arrow.left.to.line.alt
    case arrow_left_to_line_alt = "􀅅arrow.left.to.line.alt"
    /// 􀑽 arrow.up.and.down.square.fill
    case arrow_up_and_down_square_fill = "􀑽arrow.up.and.down.square.fill"
    /// 􀑼 arrow.up.and.down.square
    case arrow_up_and_down_square = "􀑼arrow.up.and.down.square"
    /// 􀑻 arrow.up.and.down.circle.fill
    case arrow_up_and_down_circle_fill = "􀑻arrow.up.and.down.circle.fill"
    /// 􀑺 arrow.up.and.down.circle
    case arrow_up_and_down_circle = "􀑺arrow.up.and.down.circle"
    /// 􀑹 arrow.up.and.down
    case arrow_up_and_down = "􀑹arrow.up.and.down"
    /// 􀒁 arrow.left.and.right.square.fill
    case arrow_left_and_right_square_fill = "􀒁arrow.left.and.right.square.fill"
    /// 􀒀 arrow.left.and.right.square
    case arrow_left_and_right_square = "􀒀arrow.left.and.right.square"
    /// 􀑿 arrow.left.and.right.circle.fill
    case arrow_left_and_right_circle_fill = "􀑿arrow.left.and.right.circle.fill"
    /// 􀑾 arrow.left.and.right.circle
    case arrow_left_and_right_circle = "􀑾arrow.left.and.right.circle"
    /// 􀄾 arrow.left.and.right
    case arrow_left_and_right = "􀄾arrow.left.and.right"
    /// 􀬑 arrow.up.left.and.down.right.and.arrow.up.right.and.down.left
    case arrow_up_left_and_down_right_and_arrow_up_right_and_down_left = "􀬑arrow.up.left.and.down.right.and.arrow.up.right.and.down.left"
    /// 􀧐 arrow.up.and.down.and.arrow.left.and.right
    case arrow_up_and_down_and_arrow_left_and_right = "􀧐arrow.up.and.down.and.arrow.left.and.right"
    /// 􀄝 arrow.uturn.down.square.fill
    case arrow_uturn_down_square_fill = "􀄝arrow.uturn.down.square.fill"
    /// 􀄜 arrow.uturn.down.square
    case arrow_uturn_down_square = "􀄜arrow.uturn.down.square"
    /// 􀂍 arrow.uturn.down.circle.fill
    case arrow_uturn_down_circle_fill = "􀂍arrow.uturn.down.circle.fill"
    /// 􀂌 arrow.uturn.down.circle
    case arrow_uturn_down_circle = "􀂌arrow.uturn.down.circle"
    /// 􀄻 arrow.uturn.down
    case arrow_uturn_down = "􀄻arrow.uturn.down"
    /// 􀄛 arrow.uturn.up.square.fill
    case arrow_uturn_up_square_fill = "􀄛arrow.uturn.up.square.fill"
    /// 􀄚 arrow.uturn.up.square
    case arrow_uturn_up_square = "􀄚arrow.uturn.up.square"
    /// 􀂋 arrow.uturn.up.circle.fill
    case arrow_uturn_up_circle_fill = "􀂋arrow.uturn.up.circle.fill"
    /// 􀂊 arrow.uturn.up.circle
    case arrow_uturn_up_circle = "􀂊arrow.uturn.up.circle"
    /// 􀄺 arrow.uturn.up
    case arrow_uturn_up = "􀄺arrow.uturn.up"
    /// 􀱗 arrow.uturn.forward.square.fill
    case arrow_uturn_forward_square_fill = "􀱗arrow.uturn.forward.square.fill"
    /// 􀱖 arrow.uturn.forward.square
    case arrow_uturn_forward_square = "􀱖arrow.uturn.forward.square"
    /// 􀱕 arrow.uturn.forward.circle.fill
    case arrow_uturn_forward_circle_fill = "􀱕arrow.uturn.forward.circle.fill"
    /// 􀱔 arrow.uturn.forward.circle
    case arrow_uturn_forward_circle = "􀱔arrow.uturn.forward.circle"
    /// 􀱓 arrow.uturn.forward
    case arrow_uturn_forward = "􀱓arrow.uturn.forward"
    /// 􀄡 arrow.uturn.right.square.fill
    case arrow_uturn_right_square_fill = "􀄡arrow.uturn.right.square.fill"
    /// 􀄠 arrow.uturn.right.square
    case arrow_uturn_right_square = "􀄠arrow.uturn.right.square"
    /// 􀂑 arrow.uturn.right.circle.fill
    case arrow_uturn_right_circle_fill = "􀂑arrow.uturn.right.circle.fill"
    /// 􀂐 arrow.uturn.right.circle
    case arrow_uturn_right_circle = "􀂐arrow.uturn.right.circle"
    /// 􀄽 arrow.uturn.right
    case arrow_uturn_right = "􀄽arrow.uturn.right"
    /// 􀱒 arrow.uturn.backward.square.fill
    case arrow_uturn_backward_square_fill = "􀱒arrow.uturn.backward.square.fill"
    /// 􀱑 arrow.uturn.backward.square
    case arrow_uturn_backward_square = "􀱑arrow.uturn.backward.square"
    /// 􀱐 arrow.uturn.backward.circle.badge.ellipsis
    case arrow_uturn_backward_circle_badge_ellipsis = "􀱐arrow.uturn.backward.circle.badge.ellipsis"
    /// 􀱏 arrow.uturn.backward.circle.fill
    case arrow_uturn_backward_circle_fill = "􀱏arrow.uturn.backward.circle.fill"
    /// 􀱎 arrow.uturn.backward.circle
    case arrow_uturn_backward_circle = "􀱎arrow.uturn.backward.circle"
    /// 􀱍 arrow.uturn.backward
    case arrow_uturn_backward = "􀱍arrow.uturn.backward"
    /// 􀄟 arrow.uturn.left.square.fill
    case arrow_uturn_left_square_fill = "􀄟arrow.uturn.left.square.fill"
    /// 􀄞 arrow.uturn.left.square
    case arrow_uturn_left_square = "􀄞arrow.uturn.left.square"
    /// 􀞸 arrow.uturn.left.circle.badge.ellipsis
    case arrow_uturn_left_circle_badge_ellipsis = "􀞸arrow.uturn.left.circle.badge.ellipsis"
    /// 􀂏 arrow.uturn.left.circle.fill
    case arrow_uturn_left_circle_fill = "􀂏arrow.uturn.left.circle.fill"
    /// 􀂎 arrow.uturn.left.circle
    case arrow_uturn_left_circle = "􀂎arrow.uturn.left.circle"
    /// 􀄼 arrow.uturn.left
    case arrow_uturn_left = "􀄼arrow.uturn.left"
    /// 􀄷 arrow.turn.left.down
    case arrow_turn_left_down = "􀄷arrow.turn.left.down"
    /// 􀄳 arrow.turn.right.down
    case arrow_turn_right_down = "􀄳arrow.turn.right.down"
    /// 􀄶 arrow.turn.left.up
    case arrow_turn_left_up = "􀄶arrow.turn.left.up"
    /// 􀄲 arrow.turn.right.up
    case arrow_turn_right_up = "􀄲arrow.turn.right.up"
    /// 􀄹 arrow.turn.up.right
    case arrow_turn_up_right = "􀄹arrow.turn.up.right"
    /// 􀄵 arrow.turn.down.right
    case arrow_turn_down_right = "􀄵arrow.turn.down.right"
    /// 􀄸 arrow.turn.up.left
    case arrow_turn_up_left = "􀄸arrow.turn.up.left"
    /// 􀄴 arrow.turn.down.left
    case arrow_turn_down_left = "􀄴arrow.turn.down.left"
    /// 􀄏 arrow.up.arrow.down.square.fill
    case arrow_up_arrow_down_square_fill = "􀄏arrow.up.arrow.down.square.fill"
    /// 􀄎 arrow.up.arrow.down.square
    case arrow_up_arrow_down_square = "􀄎arrow.up.arrow.down.square"
    /// 􀁿 arrow.up.arrow.down.circle.fill
    case arrow_up_arrow_down_circle_fill = "􀁿arrow.up.arrow.down.circle.fill"
    /// 􀁾 arrow.up.arrow.down.circle
    case arrow_up_arrow_down_circle = "􀁾arrow.up.arrow.down.circle"
    /// 􀄬 arrow.up.arrow.down
    case arrow_up_arrow_down = "􀄬arrow.up.arrow.down"
    /// 􀄑 arrow.left.arrow.right.square.fill
    case arrow_left_arrow_right_square_fill = "􀄑arrow.left.arrow.right.square.fill"
    /// 􀄐 arrow.left.arrow.right.square
    case arrow_left_arrow_right_square = "􀄐arrow.left.arrow.right.square"
    /// 􀂁 arrow.left.arrow.right.circle.fill
    case arrow_left_arrow_right_circle_fill = "􀂁arrow.left.arrow.right.circle.fill"
    /// 􀂀 arrow.left.arrow.right.circle
    case arrow_left_arrow_right_circle = "􀂀arrow.left.arrow.right.circle"
    /// 􀄭 arrow.left.arrow.right
    case arrow_left_arrow_right = "􀄭arrow.left.arrow.right"
    /// 􀱌 arrow.down.forward.square.fill
    case arrow_down_forward_square_fill = "􀱌arrow.down.forward.square.fill"
    /// 􀱋 arrow.down.forward.square
    case arrow_down_forward_square = "􀱋arrow.down.forward.square"
    /// 􀱊 arrow.down.forward.circle.fill
    case arrow_down_forward_circle_fill = "􀱊arrow.down.forward.circle.fill"
    /// 􀱉 arrow.down.forward.circle
    case arrow_down_forward_circle = "􀱉arrow.down.forward.circle"
    /// 􀱈 arrow.down.forward
    case arrow_down_forward = "􀱈arrow.down.forward"
    /// 􀄙 arrow.down.right.square.fill
    case arrow_down_right_square_fill = "􀄙arrow.down.right.square.fill"
    /// 􀄘 arrow.down.right.square
    case arrow_down_right_square = "􀄘arrow.down.right.square"
    /// 􀂉 arrow.down.right.circle.fill
    case arrow_down_right_circle_fill = "􀂉arrow.down.right.circle.fill"
    /// 􀂈 arrow.down.right.circle
    case arrow_down_right_circle = "􀂈arrow.down.right.circle"
    /// 􀄱 arrow.down.right
    case arrow_down_right = "􀄱arrow.down.right"
    /// 􀱇 arrow.down.backward.square.fill
    case arrow_down_backward_square_fill = "􀱇arrow.down.backward.square.fill"
    /// 􀱆 arrow.down.backward.square
    case arrow_down_backward_square = "􀱆arrow.down.backward.square"
    /// 􀱅 arrow.down.backward.circle.fill
    case arrow_down_backward_circle_fill = "􀱅arrow.down.backward.circle.fill"
    /// 􀱄 arrow.down.backward.circle
    case arrow_down_backward_circle = "􀱄arrow.down.backward.circle"
    /// 􀱃 arrow.down.backward
    case arrow_down_backward = "􀱃arrow.down.backward"
    /// 􀄗 arrow.down.left.square.fill
    case arrow_down_left_square_fill = "􀄗arrow.down.left.square.fill"
    /// 􀄖 arrow.down.left.square
    case arrow_down_left_square = "􀄖arrow.down.left.square"
    /// 􀂇 arrow.down.left.circle.fill
    case arrow_down_left_circle_fill = "􀂇arrow.down.left.circle.fill"
    /// 􀂆 arrow.down.left.circle
    case arrow_down_left_circle = "􀂆arrow.down.left.circle"
    /// 􀄰 arrow.down.left
    case arrow_down_left = "􀄰arrow.down.left"
    /// 􀱂 arrow.up.forward.square.fill
    case arrow_up_forward_square_fill = "􀱂arrow.up.forward.square.fill"
    /// 􀱁 arrow.up.forward.square
    case arrow_up_forward_square = "􀱁arrow.up.forward.square"
    /// 􀱀 arrow.up.forward.circle.fill
    case arrow_up_forward_circle_fill = "􀱀arrow.up.forward.circle.fill"
    /// 􀰿 arrow.up.forward.circle
    case arrow_up_forward_circle = "􀰿arrow.up.forward.circle"
    /// 􀰾 arrow.up.forward
    case arrow_up_forward = "􀰾arrow.up.forward"
    /// 􀄕 arrow.up.right.square.fill
    case arrow_up_right_square_fill = "􀄕arrow.up.right.square.fill"
    /// 􀄔 arrow.up.right.square
    case arrow_up_right_square = "􀄔arrow.up.right.square"
    /// 􀂅 arrow.up.right.circle.fill
    case arrow_up_right_circle_fill = "􀂅arrow.up.right.circle.fill"
    /// 􀂄 arrow.up.right.circle
    case arrow_up_right_circle = "􀂄arrow.up.right.circle"
    /// 􀄯 arrow.up.right
    case arrow_up_right = "􀄯arrow.up.right"
    /// 􀰽 arrow.up.backward.square.fill
    case arrow_up_backward_square_fill = "􀰽arrow.up.backward.square.fill"
    /// 􀰼 arrow.up.backward.square
    case arrow_up_backward_square = "􀰼arrow.up.backward.square"
    /// 􀰻 arrow.up.backward.circle.fill
    case arrow_up_backward_circle_fill = "􀰻arrow.up.backward.circle.fill"
    /// 􀰺 arrow.up.backward.circle
    case arrow_up_backward_circle = "􀰺arrow.up.backward.circle"
    /// 􀰹 arrow.up.backward
    case arrow_up_backward = "􀰹arrow.up.backward"
    /// 􀄓 arrow.up.left.square.fill
    case arrow_up_left_square_fill = "􀄓arrow.up.left.square.fill"
    /// 􀄒 arrow.up.left.square
    case arrow_up_left_square = "􀄒arrow.up.left.square"
    /// 􀂃 arrow.up.left.circle.fill
    case arrow_up_left_circle_fill = "􀂃arrow.up.left.circle.fill"
    /// 􀂂 arrow.up.left.circle
    case arrow_up_left_circle = "􀂂arrow.up.left.circle"
    /// 􀄮 arrow.up.left
    case arrow_up_left = "􀄮arrow.up.left"
    /// 􀄉 arrow.down.square.fill
    case arrow_down_square_fill = "􀄉arrow.down.square.fill"
    /// 􀄈 arrow.down.square
    case arrow_down_square = "􀄈arrow.down.square"
    /// 􀁹 arrow.down.circle.fill
    case arrow_down_circle_fill = "􀁹arrow.down.circle.fill"
    /// 􀁸 arrow.down.circle
    case arrow_down_circle = "􀁸arrow.down.circle"
    /// 􀄩 arrow.down
    case arrow_down = "􀄩arrow.down"
    /// 􀄇 arrow.up.square.fill
    case arrow_up_square_fill = "􀄇arrow.up.square.fill"
    /// 􀄆 arrow.up.square
    case arrow_up_square = "􀄆arrow.up.square"
    /// 􀁷 arrow.up.circle.fill
    case arrow_up_circle_fill = "􀁷arrow.up.circle.fill"
    /// 􀁶 arrow.up.circle
    case arrow_up_circle = "􀁶arrow.up.circle"
    /// 􀄨 arrow.up
    case arrow_up = "􀄨arrow.up"
    /// 􀰕 arrow.forward.square.fill
    case arrow_forward_square_fill = "􀰕arrow.forward.square.fill"
    /// 􀰔 arrow.forward.square
    case arrow_forward_square = "􀰔arrow.forward.square"
    /// 􀰓 arrow.forward.circle.fill
    case arrow_forward_circle_fill = "􀰓arrow.forward.circle.fill"
    /// 􀰒 arrow.forward.circle
    case arrow_forward_circle = "􀰒arrow.forward.circle"
    /// 􀰑 arrow.forward
    case arrow_forward = "􀰑arrow.forward"
    /// 􀄍 arrow.right.square.fill
    case arrow_right_square_fill = "􀄍arrow.right.square.fill"
    /// 􀄌 arrow.right.square
    case arrow_right_square = "􀄌arrow.right.square"
    /// 􀁽 arrow.right.circle.fill
    case arrow_right_circle_fill = "􀁽arrow.right.circle.fill"
    /// 􀁼 arrow.right.circle
    case arrow_right_circle = "􀁼arrow.right.circle"
    /// 􀄫 arrow.right
    case arrow_right = "􀄫arrow.right"
    /// 􀰐 arrow.backward.square.fill
    case arrow_backward_square_fill = "􀰐arrow.backward.square.fill"
    /// 􀰏 arrow.backward.square
    case arrow_backward_square = "􀰏arrow.backward.square"
    /// 􀰎 arrow.backward.circle.fill
    case arrow_backward_circle_fill = "􀰎arrow.backward.circle.fill"
    /// 􀰍 arrow.backward.circle
    case arrow_backward_circle = "􀰍arrow.backward.circle"
    /// 􀰌 arrow.backward
    case arrow_backward = "􀰌arrow.backward"
    /// 􀄋 arrow.left.square.fill
    case arrow_left_square_fill = "􀄋arrow.left.square.fill"
    /// 􀄊 arrow.left.square
    case arrow_left_square = "􀄊arrow.left.square"
    /// 􀁻 arrow.left.circle.fill
    case arrow_left_circle_fill = "􀁻arrow.left.circle.fill"
    /// 􀁺 arrow.left.circle
    case arrow_left_circle = "􀁺arrow.left.circle"
    /// 􀄪 arrow.left
    case arrow_left = "􀄪arrow.left"
    /// 􀆓 chevron.compact.right
    case chevron_compact_right = "􀆓chevron.compact.right"
    /// 􀆒 chevron.compact.left
    case chevron_compact_left = "􀆒chevron.compact.left"
    /// 􀆑 chevron.compact.down
    case chevron_compact_down = "􀆑chevron.compact.down"
    /// 􀆐 chevron.compact.up
    case chevron_compact_up = "􀆐chevron.compact.up"
    /// 􀆏 chevron.up.chevron.down
    case chevron_up_chevron_down = "􀆏chevron.up.chevron.down"
    /// 􀆎 projective
    case projective = "􀆎projective"
    /// 􀆍 control
    case control = "􀆍control"
    /// 􀄁 chevron.down.square.fill
    case chevron_down_square_fill = "􀄁chevron.down.square.fill"
    /// 􀄀 chevron.down.square
    case chevron_down_square = "􀄀chevron.down.square"
    /// 􀁱 chevron.down.circle.fill
    case chevron_down_circle_fill = "􀁱chevron.down.circle.fill"
    /// 􀁰 chevron.down.circle
    case chevron_down_circle = "􀁰chevron.down.circle"
    /// 􀆈 chevron.down
    case chevron_down = "􀆈chevron.down"
    /// 􀃿 chevron.up.square.fill
    case chevron_up_square_fill = "􀃿chevron.up.square.fill"
    /// 􀃾 chevron.up.square
    case chevron_up_square = "􀃾chevron.up.square"
    /// 􀁯 chevron.up.circle.fill
    case chevron_up_circle_fill = "􀁯chevron.up.circle.fill"
    /// 􀁮 chevron.up.circle
    case chevron_up_circle = "􀁮chevron.up.circle"
    /// 􀆇 chevron.up
    case chevron_up = "􀆇chevron.up"
    /// 􀰫 chevron.forward.2
    case chevron_forward_2 = "􀰫chevron.forward.2"
    /// 􀆌 chevron.right.2
    case chevron_right_2 = "􀆌chevron.right.2"
    /// 􀰪 chevron.backward.2
    case chevron_backward_2 = "􀰪chevron.backward.2"
    /// 􀆋 chevron.left.2
    case chevron_left_2 = "􀆋chevron.left.2"
    /// 􀯿 chevron.forward.square.fill
    case chevron_forward_square_fill = "􀯿chevron.forward.square.fill"
    /// 􀯾 chevron.forward.square
    case chevron_forward_square = "􀯾chevron.forward.square"
    /// 􀯽 chevron.forward.circle.fill
    case chevron_forward_circle_fill = "􀯽chevron.forward.circle.fill"
    /// 􀯼 chevron.forward.circle
    case chevron_forward_circle = "􀯼chevron.forward.circle"
    /// 􀯻 chevron.forward
    case chevron_forward = "􀯻chevron.forward"
    /// 􀄅 chevron.right.square.fill
    case chevron_right_square_fill = "􀄅chevron.right.square.fill"
    /// 􀄄 chevron.right.square
    case chevron_right_square = "􀄄chevron.right.square"
    /// 􀁵 chevron.right.circle.fill
    case chevron_right_circle_fill = "􀁵chevron.right.circle.fill"
    /// 􀁴 chevron.right.circle
    case chevron_right_circle = "􀁴chevron.right.circle"
    /// 􀆊 chevron.right
    case chevron_right = "􀆊chevron.right"
    /// 􀯺 chevron.backward.square.fill
    case chevron_backward_square_fill = "􀯺chevron.backward.square.fill"
    /// 􀯹 chevron.backward.square
    case chevron_backward_square = "􀯹chevron.backward.square"
    /// 􀯸 chevron.backward.circle.fill
    case chevron_backward_circle_fill = "􀯸chevron.backward.circle.fill"
    /// 􀯷 chevron.backward.circle
    case chevron_backward_circle = "􀯷chevron.backward.circle"
    /// 􀯶 chevron.backward
    case chevron_backward = "􀯶chevron.backward"
    /// 􀄃 chevron.left.square.fill
    case chevron_left_square_fill = "􀄃chevron.left.square.fill"
    /// 􀄂 chevron.left.square
    case chevron_left_square = "􀄂chevron.left.square"
    /// 􀁳 chevron.left.circle.fill
    case chevron_left_circle_fill = "􀁳chevron.left.circle.fill"
    /// 􀁲 chevron.left.circle
    case chevron_left_circle = "􀁲chevron.left.circle"
    /// 􀆉 chevron.left
    case chevron_left = "􀆉chevron.left"
    /// 􀞜 checkmark.shield.fill
    case checkmark_shield_fill = "􀞜checkmark.shield.fill"
    /// 􀞛 checkmark.shield
    case checkmark_shield = "􀞛checkmark.shield"
    /// 􀡯 checkmark.rectangle.portrait.fill
    case checkmark_rectangle_portrait_fill = "􀡯checkmark.rectangle.portrait.fill"
    /// 􀡮 checkmark.rectangle.portrait
    case checkmark_rectangle_portrait = "􀡮checkmark.rectangle.portrait"
    /// 􀏌 checkmark.rectangle.fill
    case checkmark_rectangle_fill = "􀏌checkmark.rectangle.fill"
    /// 􀏋 checkmark.rectangle
    case checkmark_rectangle = "􀏋checkmark.rectangle"
    /// 􀃳 checkmark.square.fill
    case checkmark_square_fill = "􀃳checkmark.square.fill"
    /// 􀃲 checkmark.square
    case checkmark_square = "􀃲checkmark.square"
    /// 􀁣 checkmark.circle.fill
    case checkmark_circle_fill = "􀁣checkmark.circle.fill"
    /// 􀁢 checkmark.circle
    case checkmark_circle = "􀁢checkmark.circle"
    /// 􀆅 checkmark
    case checkmark = "􀆅checkmark"
    /// 􀃱 xmark.square.fill
    case xmark_square_fill = "􀃱xmark.square.fill"
    /// 􀃰 xmark.square
    case xmark_square = "􀃰xmark.square"
    /// 􀁡 xmark.circle.fill
    case xmark_circle_fill = "􀁡xmark.circle.fill"
    /// 􀁠 xmark.circle
    case xmark_circle = "􀁠xmark.circle"
    /// 􀆄 xmark
    case xmark = "􀆄xmark"
    /// 􀓪 x.squareroot
    case x_squareroot = "􀓪x.squareroot"
    /// 􀃫 number.square.fill
    case number_square_fill = "􀃫number.square.fill"
    /// 􀃪 number.square
    case number_square = "􀃪number.square"
    /// 􀁛 number.circle.fill
    case number_circle_fill = "􀁛number.circle.fill"
    /// 􀁚 number.circle
    case number_circle = "􀁚number.circle"
    /// 􀆃 number
    case number = "􀆃number"
    /// 􀤙 curlybraces.square.fill
    case curlybraces_square_fill = "􀤙curlybraces.square.fill"
    /// 􀤘 curlybraces.square
    case curlybraces_square = "􀤘curlybraces.square"
    /// 􀡅 curlybraces
    case curlybraces = "􀡅curlybraces"
    /// 􀙚 chevron.left.slash.chevron.right
    case chevron_left_slash_chevron_right = "􀙚chevron.left.slash.chevron.right"
    /// 􀃩 greaterthan.square.fill
    case greaterthan_square_fill = "􀃩greaterthan.square.fill"
    /// 􀃨 greaterthan.square
    case greaterthan_square = "􀃨greaterthan.square"
    /// 􀁗 greaterthan.circle.fill
    case greaterthan_circle_fill = "􀁗greaterthan.circle.fill"
    /// 􀁖 greaterthan.circle
    case greaterthan_circle = "􀁖greaterthan.circle"
    /// 􀆂 greaterthan
    case greaterthan = "􀆂greaterthan"
    /// 􀃧 lessthan.square.fill
    case lessthan_square_fill = "􀃧lessthan.square.fill"
    /// 􀃦 lessthan.square
    case lessthan_square = "􀃦lessthan.square"
    /// 􀁙 lessthan.circle.fill
    case lessthan_circle_fill = "􀁙lessthan.circle.fill"
    /// 􀁘 lessthan.circle
    case lessthan_circle = "􀁘lessthan.circle"
    /// 􀆁 lessthan
    case lessthan = "􀆁lessthan"
    /// 􀃥 equal.square.fill
    case equal_square_fill = "􀃥equal.square.fill"
    /// 􀃤 equal.square
    case equal_square = "􀃤equal.square"
    /// 􀁕 equal.circle.fill
    case equal_circle_fill = "􀁕equal.circle.fill"
    /// 􀁔 equal.circle
    case equal_circle = "􀁔equal.circle"
    /// 􀆀 equal
    case equal = "􀆀equal"
    /// 􀃣 divide.square.fill
    case divide_square_fill = "􀃣divide.square.fill"
    /// 􀃢 divide.square
    case divide_square = "􀃢divide.square"
    /// 􀁓 divide.circle.fill
    case divide_circle_fill = "􀁓divide.circle.fill"
    /// 􀁒 divide.circle
    case divide_circle = "􀁒divide.circle"
    /// 􀅿 divide
    case divide = "􀅿divide"
    /// 􀒊 xmark.octagon.fill
    case xmark_octagon_fill = "􀒊xmark.octagon.fill"
    /// 􀒉 xmark.octagon
    case xmark_octagon = "􀒉xmark.octagon"
    /// 􀞞 xmark.shield.fill
    case xmark_shield_fill = "􀞞xmark.shield.fill"
    /// 􀞝 xmark.shield
    case xmark_shield = "􀞝xmark.shield"
    /// 􀢄 xmark.diamond.fill
    case xmark_diamond_fill = "􀢄xmark.diamond.fill"
    /// 􀢃 xmark.diamond
    case xmark_diamond = "􀢃xmark.diamond"
    /// 􀡱 xmark.rectangle.portrait.fill
    case xmark_rectangle_portrait_fill = "􀡱xmark.rectangle.portrait.fill"
    /// 􀡰 xmark.rectangle.portrait
    case xmark_rectangle_portrait = "􀡰xmark.rectangle.portrait"
    /// 􀏎 xmark.rectangle.fill
    case xmark_rectangle_fill = "􀏎xmark.rectangle.fill"
    /// 􀏍 xmark.rectangle
    case xmark_rectangle = "􀏍xmark.rectangle"
    /// 􀃡 multiply.square.fill
    case multiply_square_fill = "􀃡multiply.square.fill"
    /// 􀃠 multiply.square
    case multiply_square = "􀃠multiply.square"
    /// 􀁑 multiply.circle.fill
    case multiply_circle_fill = "􀁑multiply.circle.fill"
    /// 􀁐 multiply.circle
    case multiply_circle = "􀁐multiply.circle"
    /// 􀅾 multiply
    case multiply = "􀅾multiply"
    /// 􀅻 minus.slash.plus
    case minus_slash_plus = "􀅻minus.slash.plus"
    /// 􀅺 plus.slash.minus
    case plus_slash_minus = "􀅺plus.slash.minus"
    /// 􀘝 plusminus.circle.fill
    case plusminus_circle_fill = "􀘝plusminus.circle.fill"
    /// 􀍶 plusminus.circle
    case plusminus_circle = "􀍶plusminus.circle"
    /// 􀛺 plusminus
    case plusminus = "􀛺plusminus"
    /// 􀢂 minus.diamond.fill
    case minus_diamond_fill = "􀢂minus.diamond.fill"
    /// 􀢁 minus.diamond
    case minus_diamond = "􀢁minus.diamond"
    /// 􀡭 minus.rectangle.portrait.fill
    case minus_rectangle_portrait_fill = "􀡭minus.rectangle.portrait.fill"
    /// 􀡬 minus.rectangle.portrait
    case minus_rectangle_portrait = "􀡬minus.rectangle.portrait"
    /// 􀏊 minus.rectangle.fill
    case minus_rectangle_fill = "􀏊minus.rectangle.fill"
    /// 􀏉 minus.rectangle
    case minus_rectangle = "􀏉minus.rectangle"
    /// 􀃟 minus.square.fill
    case minus_square_fill = "􀃟minus.square.fill"
    /// 􀃞 minus.square
    case minus_square = "􀃞minus.square"
    /// 􀁏 minus.circle.fill
    case minus_circle_fill = "􀁏minus.circle.fill"
    /// 􀁎 minus.circle
    case minus_circle = "􀁎minus.circle"
    /// 􀅽 minus
    case minus = "􀅽minus"
    /// 􀢀 plus.diamond.fill
    case plus_diamond_fill = "􀢀plus.diamond.fill"
    /// 􀡿 plus.diamond
    case plus_diamond = "􀡿plus.diamond"
    /// 􀡫 plus.rectangle.portrait.fill
    case plus_rectangle_portrait_fill = "􀡫plus.rectangle.portrait.fill"
    /// 􀡪 plus.rectangle.portrait
    case plus_rectangle_portrait = "􀡪plus.rectangle.portrait"
    /// 􀏈 plus.rectangle.fill
    case plus_rectangle_fill = "􀏈plus.rectangle.fill"
    /// 􀏇 plus.rectangle
    case plus_rectangle = "􀏇plus.rectangle"
    /// 􀃝 plus.square.fill
    case plus_square_fill = "􀃝plus.square.fill"
    /// 􀃜 plus.square
    case plus_square = "􀃜plus.square"
    /// 􀁍 plus.circle.fill
    case plus_circle_fill = "􀁍plus.circle.fill"
    /// 􀁌 plus.circle
    case plus_circle = "􀁌plus.circle"
    /// 􀅼 plus
    case plus = "􀅼plus"
    /// 􀞠 exclamationmark.shield.fill
    case exclamationmark_shield_fill = "􀞠exclamationmark.shield.fill"
    /// 􀞟 exclamationmark.shield
    case exclamationmark_shield = "􀞟exclamationmark.shield"
    /// 􀘰 exclamationmark.octagon.fill
    case exclamationmark_octagon_fill = "􀘰exclamationmark.octagon.fill"
    /// 􀘯 exclamationmark.octagon
    case exclamationmark_octagon = "􀘯exclamationmark.octagon"
    /// 􀃯 exclamationmark.square.fill
    case exclamationmark_square_fill = "􀃯exclamationmark.square.fill"
    /// 􀃮 exclamationmark.square
    case exclamationmark_square = "􀃮exclamationmark.square"
    /// 􀁟 exclamationmark.circle.fill
    case exclamationmark_circle_fill = "􀁟exclamationmark.circle.fill"
    /// 􀁞 exclamationmark.circle
    case exclamationmark_circle = "􀁞exclamationmark.circle"
    /// 􀣴 exclamationmark.3
    case exclamationmark_3 = "􀣴exclamationmark.3"
    /// 􀢒 exclamationmark.2
    case exclamationmark_2 = "􀢒exclamationmark.2"
    /// 􀅎 exclamationmark
    case exclamationmark = "􀅎exclamationmark"
    /// 􀄣 questionmark.diamond.fill
    case questionmark_diamond_fill = "􀄣questionmark.diamond.fill"
    /// 􀄢 questionmark.diamond
    case questionmark_diamond = "􀄢questionmark.diamond"
    /// 􀃭 questionmark.square.fill
    case questionmark_square_fill = "􀃭questionmark.square.fill"
    /// 􀃬 questionmark.square
    case questionmark_square = "􀃬questionmark.square"
    /// 􀁝 questionmark.circle.fill
    case questionmark_circle_fill = "􀁝questionmark.circle.fill"
    /// 􀁜 questionmark.circle
    case questionmark_circle = "􀁜questionmark.circle"
    /// 􀅍 questionmark
    case questionmark = "􀅍questionmark"
    /// 􀅹 at.badge.minus
    case at_badge_minus = "􀅹at.badge.minus"
    /// 􀅸 at.badge.plus
    case at_badge_plus = "􀅸at.badge.plus"
    /// 􀢑 at.circle.fill
    case at_circle_fill = "􀢑at.circle.fill"
    /// 􀢐 at.circle
    case at_circle = "􀢐at.circle"
    /// 􀅷 at
    case at = "􀅷at"
    /// 􀅵 info.circle.fill
    case info_circle_fill = "􀅵info.circle.fill"
    /// 􀅴 info.circle
    case info_circle = "􀅴info.circle"
    /// 􀅳 info
    case info = "􀅳info"
    /// 􀤍 a.magnify
    case a_magnify = "􀤍a.magnify"
    /// 􀅶 textbox
    case textbox = "􀅶textbox"
    /// 􀅱 textformat.123
    case textformat_123 = "􀅱textformat.123"
    /// 􀥌 fn
    case fn = "􀥌fn"
    /// 􀅰 textformat.abc.dottedunderline
    case textformat_abc_dottedunderline = "􀅰textformat.abc.dottedunderline"
    /// 􀅯 textformat.abc
    case textformat_abc = "􀅯textformat.abc"
    /// 􀅮 function
    case function = "􀅮function"
    /// 􀘾 percent
    case percent = "􀘾percent"
    /// 􀘽 sum
    case sum = "􀘽sum"
    /// 􀥋 k
    case k = "􀥋k"
    /// 􀝨 f.cursive.circle.fill
    case f_cursive_circle_fill = "􀝨f.cursive.circle.fill"
    /// 􀝧 f.cursive.circle
    case f_cursive_circle = "􀝧f.cursive.circle"
    /// 􀅭 f.cursive
    case f_cursive = "􀅭f.cursive"
    /// 􀅬 fx
    case fx = "􀅬fx"
    /// 􀅫 text.cursor
    case text_cursor = "􀅫text.cursor"
    /// 􀅪 view.3d
    case view_3d = "􀅪view.3d"
    /// 􀅙 view.2d
    case view_2d = "􀅙view.2d"
    /// 􀅘 bold.underline
    case bold_underline = "􀅘bold.underline"
    /// 􀅗 bold.italic.underline
    case bold_italic_underline = "􀅗bold.italic.underline"
    /// 􀨡 shadow
    case shadow = "􀨡shadow"
    /// 􀅖 strikethrough
    case strikethrough = "􀅖strikethrough"
    /// 􀅕 underline
    case underline = "􀅕underline"
    /// 􀅔 italic
    case italic = "􀅔italic"
    /// 􀅓 bold
    case bold = "􀅓bold"
    /// 􀓡 textformat.subscript
    case textformat_subscript = "􀓡textformat.subscript"
    /// 􀓢 textformat.superscript
    case textformat_superscript = "􀓢textformat.superscript"
    /// 􀅐 textformat.size
    case textformat_size = "􀅐textformat.size"
    /// 􀅒 textformat
    case textformat = "􀅒textformat"
    /// 􀅑 textformat.alt
    case textformat_alt = "􀅑textformat.alt"
    /// 􀥊 abc
    case abc = "􀥊abc"
    /// 􀵿 textformat.size.larger
    case textformat_size_larger = "􀵿textformat.size.larger"
    /// 􀵷 textformat.size.smaller
    case textformat_size_smaller = "􀵷textformat.size.smaller"
    /// 􀅏 character
    case character = "􀅏character"
    /// 􀘶 line.horizontal.2.decrease.circle.fill
    case line_horizontal_2_decrease_circle_fill = "􀘶line.horizontal.2.decrease.circle.fill"
    /// 􀘵 line.horizontal.2.decrease.circle
    case line_horizontal_2_decrease_circle = "􀘵line.horizontal.2.decrease.circle"
    /// 􀧲 line.horizontal.3.circle.fill
    case line_horizontal_3_circle_fill = "􀧲line.horizontal.3.circle.fill"
    /// 􀧱 line.horizontal.3.circle
    case line_horizontal_3_circle = "􀧱line.horizontal.3.circle"
    /// 􀌉 line.horizontal.3.decrease.circle.fill
    case line_horizontal_3_decrease_circle_fill = "􀌉line.horizontal.3.decrease.circle.fill"
    /// 􀌈 line.horizontal.3.decrease.circle
    case line_horizontal_3_decrease_circle = "􀌈line.horizontal.3.decrease.circle"
    /// 􀜓 line.horizontal.3.decrease
    case line_horizontal_3_decrease = "􀜓line.horizontal.3.decrease"
    /// 􀌇 line.horizontal.3
    case line_horizontal_3 = "􀌇line.horizontal.3"
    /// 􀬉 list.and.film
    case list_and_film = "􀬉list.and.film"
    /// 􀧎 text.redaction
    case text_redaction = "􀧎text.redaction"
    /// 􀌅 text.justifyright
    case text_justifyright = "􀌅text.justifyright"
    /// 􀌄 text.justifyleft
    case text_justifyleft = "􀌄text.justifyleft"
    /// 􀌃 text.justify
    case text_justify = "􀌃text.justify"
    /// 􀌂 text.alignright
    case text_alignright = "􀌂text.alignright"
    /// 􀌁 text.aligncenter
    case text_aligncenter = "􀌁text.aligncenter"
    /// 􀌀 text.alignleft
    case text_alignleft = "􀌀text.alignleft"
    /// 􀋿 text.quote
    case text_quote = "􀋿text.quote"
    /// 􀋾 text.append
    case text_append = "􀋾text.append"
    /// 􀋽 text.insert
    case text_insert = "􀋽text.insert"
    /// 􀋼 text.badge.star
    case text_badge_star = "􀋼text.badge.star"
    /// 􀋻 text.badge.xmark
    case text_badge_xmark = "􀋻text.badge.xmark"
    /// 􀋺 text.badge.checkmark
    case text_badge_checkmark = "􀋺text.badge.checkmark"
    /// 􀋹 text.badge.minus
    case text_badge_minus = "􀋹text.badge.minus"
    /// 􀋸 text.badge.plus
    case text_badge_plus = "􀋸text.badge.plus"
    /// 􀋷 list.bullet.below.rectangle
    case list_bullet_below_rectangle = "􀋷list.bullet.below.rectangle"
    /// 􀞀 increase.quotelevel
    case increase_quotelevel = "􀞀increase.quotelevel"
    /// 􀝿 decrease.quotelevel
    case decrease_quotelevel = "􀝿decrease.quotelevel"
    /// 􀋶 decrease.indent
    case decrease_indent = "􀋶decrease.indent"
    /// 􀋵 increase.indent
    case increase_indent = "􀋵increase.indent"
    /// 􀣩 list.star
    case list_star = "􀣩list.star"
    /// 􀋴 list.number
    case list_number = "􀋴list.number"
    /// 􀋳 list.bullet.indent
    case list_bullet_indent = "􀋳list.bullet.indent"
    /// 􀢽 list.triangle
    case list_triangle = "􀢽list.triangle"
    /// 􀋲 list.bullet
    case list_bullet = "􀋲list.bullet"
    /// 􀋱 list.dash
    case list_dash = "􀋱list.dash"
    /// 􀭞 square.fill.text.grid.1x2
    case square_fill_text_grid_1x2 = "􀭞square.fill.text.grid.1x2"
    /// 􀥢 fiberchannel
    case fiberchannel = "􀥢fiberchannel"
    /// 􀞄 lightbulb.slash.fill
    case lightbulb_slash_fill = "􀞄lightbulb.slash.fill"
    /// 􀞃 lightbulb.slash
    case lightbulb_slash = "􀞃lightbulb.slash"
    /// 􀛮 lightbulb.fill
    case lightbulb_fill = "􀛮lightbulb.fill"
    /// 􀛭 lightbulb
    case lightbulb = "􀛭lightbulb"
    /// 􀫯 bolt.fill.batteryblock.fill
    case bolt_fill_batteryblock_fill = "􀫯bolt.fill.batteryblock.fill"
    /// 􀫮 bolt.fill.batteryblock
    case bolt_fill_batteryblock = "􀫮bolt.fill.batteryblock"
    /// 􀫭 minus.plus.batteryblock.fill
    case minus_plus_batteryblock_fill = "􀫭minus.plus.batteryblock.fill"
    /// 􀫬 minus.plus.batteryblock
    case minus_plus_batteryblock = "􀫬minus.plus.batteryblock"
    /// 􀢋 battery.100.bolt
    case battery_100_bolt = "􀢋battery.100.bolt"
    /// 􀛪 battery.0
    case battery_0 = "􀛪battery.0"
    /// 􀛩 battery.25
    case battery_25 = "􀛩battery.25"
    /// 􀛨 battery.100
    case battery_100 = "􀛨battery.100"
    /// 􀠎 binoculars.fill
    case binoculars_fill = "􀠎binoculars.fill"
    /// 􀠍 binoculars
    case binoculars = "􀠍binoculars"
    /// 􀖆 eyeglasses
    case eyeglasses = "􀖆eyeglasses"
    /// 􀕼 recordingtape
    case recordingtape = "􀕼recordingtape"
    /// 􀡧 lifepreserver.fill
    case lifepreserver_fill = "􀡧lifepreserver.fill"
    /// 􀡦 lifepreserver
    case lifepreserver = "􀡦lifepreserver"
    /// 􀓜 burn
    case burn = "􀓜burn"
    /// 􀘟 grid.circle.fill
    case grid_circle_fill = "􀘟grid.circle.fill"
    /// 􀓘 grid.circle
    case grid_circle = "􀓘grid.circle"
    /// 􀓗 grid
    case grid = "􀓗grid"
    /// 􀟧 arrowtriangle.right.fill.and.line.vertical.and.arrowtriangle.left.fill
    case arrowtriangle_right_fill_and_line_vertical_and_arrowtriangle_left_fill = "􀟧arrowtriangle.right.fill.and.line.vertical.and.arrowtriangle.left.fill"
    /// 􀠊 arrowtriangle.right.and.line.vertical.and.arrowtriangle.left
    case arrowtriangle_right_and_line_vertical_and_arrowtriangle_left = "􀠊arrowtriangle.right.and.line.vertical.and.arrowtriangle.left"
    /// 􀟦 arrowtriangle.left.fill.and.line.vertical.and.arrowtriangle.right.fill
    case arrowtriangle_left_fill_and_line_vertical_and_arrowtriangle_right_fill = "􀟦arrowtriangle.left.fill.and.line.vertical.and.arrowtriangle.right.fill"
    /// 􀠉 arrowtriangle.left.and.line.vertical.and.arrowtriangle.right
    case arrowtriangle_left_and_line_vertical_and_arrowtriangle_right = "􀠉arrowtriangle.left.and.line.vertical.and.arrowtriangle.right"
    /// 􀟩 arrow.up.and.down.righttriangle.up.fill.righttriangle.down.fill
    case arrow_up_and_down_righttriangle_up_fill_righttriangle_down_fill = "􀟩arrow.up.and.down.righttriangle.up.fill.righttriangle.down.fill"
    /// 􀟨 arrow.up.and.down.righttriangle.up.righttriangle.down
    case arrow_up_and_down_righttriangle_up_righttriangle_down = "􀟨arrow.up.and.down.righttriangle.up.righttriangle.down"
    /// 􀞓 arrow.left.and.right.righttriangle.left.righttriangle.right.fill
    case arrow_left_and_right_righttriangle_left_righttriangle_right_fill = "􀞓arrow.left.and.right.righttriangle.left.righttriangle.right.fill"
    /// 􀞒 arrow.left.and.right.righttriangle.left.righttriangle.right
    case arrow_left_and_right_righttriangle_left_righttriangle_right = "􀞒arrow.left.and.right.righttriangle.left.righttriangle.right"
    /// 􀍵 skew
    case skew = "􀍵skew"
    /// 􀟗 camera.filters
    case camera_filters = "􀟗camera.filters"
    /// 􀞏 aspectratio.fill
    case aspectratio_fill = "􀞏aspectratio.fill"
    /// 􀞖 aspectratio
    case aspectratio = "􀞖aspectratio"
    /// 􀒱 perspective
    case perspective = "􀒱perspective"
    /// 􀚒 purchased.circle.fill
    case purchased_circle_fill = "􀚒purchased.circle.fill"
    /// 􀚑 purchased.circle
    case purchased_circle = "􀚑purchased.circle"
    /// 􀚐 purchased
    case purchased = "􀚐purchased"
    /// 􀒆 paragraphsign
    case paragraphsign = "􀒆paragraphsign"
    /// 􀮀 banknote.fill
    case banknote_fill = "􀮀banknote.fill"
    /// 􀭿 banknote
    case banknote = "􀭿banknote"
    /// 􀖉 hourglass.tophalf.fill
    case hourglass_tophalf_fill = "􀖉hourglass.tophalf.fill"
    /// 􀖈 hourglass.bottomhalf.fill
    case hourglass_bottomhalf_fill = "􀖈hourglass.bottomhalf.fill"
    /// 􀣬 hourglass.badge.plus
    case hourglass_badge_plus = "􀣬hourglass.badge.plus"
    /// 􀖇 hourglass
    case hourglass = "􀖇hourglass"
    /// 􀑔 studentdesk
    case studentdesk = "􀑔studentdesk"
    /// 􀒹 airplane.circle.fill
    case airplane_circle_fill = "􀒹airplane.circle.fill"
    /// 􀒸 airplane.circle
    case airplane_circle = "􀒸airplane.circle"
    /// 􀑓 airplane
    case airplane = "􀑓airplane"
    /// 􀑒 app.gift.fill
    case app_gift_fill = "􀑒app.gift.fill"
    /// 􀑑 app.gift
    case app_gift = "􀑑app.gift"
    /// 􀭨 appclip
    case appclip = "􀭨appclip"
    /// 􀑐 app.badge.fill
    case app_badge_fill = "􀑐app.badge.fill"
    /// 􀑏 app.badge
    case app_badge = "􀑏app.badge"
    /// 􀮶 arrow.up.forward.app.fill
    case arrow_up_forward_app_fill = "􀮶arrow.up.forward.app.fill"
    /// 􀮵 arrow.up.forward.app
    case arrow_up_forward_app = "􀮵arrow.up.forward.app"
    /// 􀯵 arrow.down.app.fill
    case arrow_down_app_fill = "􀯵arrow.down.app.fill"
    /// 􀯴 arrow.down.app
    case arrow_down_app = "􀯴arrow.down.app"
    /// 􀑎 plus.app.fill
    case plus_app_fill = "􀑎plus.app.fill"
    /// 􀑍 plus.app
    case plus_app = "􀑍plus.app"
    /// 􀓁 gift.circle.fill
    case gift_circle_fill = "􀓁gift.circle.fill"
    /// 􀓀 gift.circle
    case gift_circle = "􀓀gift.circle"
    /// 􀑊 gift.fill
    case gift_fill = "􀑊gift.fill"
    /// 􀑉 gift
    case gift = "􀑉gift"
    /// 􀒿 headphones.circle.fill
    case headphones_circle_fill = "􀒿headphones.circle.fill"
    /// 􀒾 headphones.circle
    case headphones_circle = "􀒾headphones.circle"
    /// 􀑈 headphones
    case headphones = "􀑈headphones"
    /// 􀭮 scalemass.fill
    case scalemass_fill = "􀭮scalemass.fill"
    /// 􀭭 scalemass
    case scalemass = "􀭭scalemass"
    /// 􀬚 atom
    case atom = "􀬚atom"
    /// 􀥠 bonjour
    case bonjour = "􀥠bonjour"
    /// 􀟒 touchid
    case touchid = "􀟒touchid"
    /// 􀪈 sdcard.fill
    case sdcard_fill = "􀪈sdcard.fill"
    /// 􀪇 sdcard
    case sdcard = "􀪇sdcard"
    /// 􀲶 esim.fill
    case esim_fill = "􀲶esim.fill"
    /// 􀲵 esim
    case esim = "􀲵esim"
    /// 􀡺 simcard.2.fill
    case simcard_2_fill = "􀡺simcard.2.fill"
    /// 􀡹 simcard.2
    case simcard_2 = "􀡹simcard.2"
    /// 􀠆 simcard.fill
    case simcard_fill = "􀠆simcard.fill"
    /// 􀠅 simcard
    case simcard = "􀠅simcard"
    /// 􀒻 staroflife.circle.fill
    case staroflife_circle_fill = "􀒻staroflife.circle.fill"
    /// 􀒺 staroflife.circle
    case staroflife_circle = "􀒺staroflife.circle"
    /// 􀑇 staroflife.fill
    case staroflife_fill = "􀑇staroflife.fill"
    /// 􀑆 staroflife
    case staroflife = "􀑆staroflife"
    /// 􀞉 waveform.circle.fill
    case waveform_circle_fill = "􀞉waveform.circle.fill"
    /// 􀞈 waveform.circle
    case waveform_circle = "􀞈waveform.circle"
    /// 􀙫 waveform
    case waveform = "􀙫waveform"
    /// 􀑅 waveform.path.badge.minus
    case waveform_path_badge_minus = "􀑅waveform.path.badge.minus"
    /// 􀑄 waveform.path.badge.plus
    case waveform_path_badge_plus = "􀑄waveform.path.badge.plus"
    /// 􀑃 waveform.path
    case waveform_path = "􀑃waveform.path"
    /// 􀟫 waveform.path.ecg.rectangle.fill
    case waveform_path_ecg_rectangle_fill = "􀟫waveform.path.ecg.rectangle.fill"
    /// 􀟪 waveform.path.ecg.rectangle
    case waveform_path_ecg_rectangle = "􀟪waveform.path.ecg.rectangle"
    /// 􀜟 waveform.path.ecg
    case waveform_path_ecg = "􀜟waveform.path.ecg"
    /// 􀘞 burst.fill
    case burst_fill = "􀘞burst.fill"
    /// 􀑂 burst
    case burst = "􀑂burst"
    /// 􀮟 squareshape.split.3x3
    case squareshape_split_3x3 = "􀮟squareshape.split.3x3"
    /// 􀮞 squareshape.split.2x2
    case squareshape_split_2x2 = "􀮞squareshape.split.2x2"
    /// 􀮌 squareshape.split.2x2.dotted
    case squareshape_split_2x2_dotted = "􀮌squareshape.split.2x2.dotted"
    /// 􀮋 dot.squareshape.split.2x2
    case dot_squareshape_split_2x2 = "􀮋dot.squareshape.split.2x2"
    /// 􀣉 chart.bar.xaxis
    case chart_bar_xaxis = "􀣉chart.bar.xaxis"
    /// 􀜋 chart.pie.fill
    case chart_pie_fill = "􀜋chart.pie.fill"
    /// 􀑀 chart.pie
    case chart_pie = "􀑀chart.pie"
    /// 􀐿 chart.bar.fill
    case chart_bar_fill = "􀐿chart.bar.fill"
    /// 􀐾 chart.bar
    case chart_bar = "􀐾chart.bar"
    /// 􀡔 cylinder.split.1x2.fill
    case cylinder_split_1x2_fill = "􀡔cylinder.split.1x2.fill"
    /// 􀡓 cylinder.split.1x2
    case cylinder_split_1x2 = "􀡓cylinder.split.1x2"
    /// 􀳄 cylinder.fill
    case cylinder_fill = "􀳄cylinder.fill"
    /// 􀳃 cylinder
    case cylinder = "􀳃cylinder"
    /// 􀯳 square.3.stack.3d.bottom.fill
    case square_3_stack_3d_bottom_fill = "􀯳square.3.stack.3d.bottom.fill"
    /// 􀯲 square.3.stack.3d.middle.fill
    case square_3_stack_3d_middle_fill = "􀯲square.3.stack.3d.middle.fill"
    /// 􀯱 square.3.stack.3d.top.fill
    case square_3_stack_3d_top_fill = "􀯱square.3.stack.3d.top.fill"
    /// 􀯰 square.3.stack.3d
    case square_3_stack_3d = "􀯰square.3.stack.3d"
    /// 􀯯 square.2.stack.3d.bottom.fill
    case square_2_stack_3d_bottom_fill = "􀯯square.2.stack.3d.bottom.fill"
    /// 􀯮 square.2.stack.3d.top.fill
    case square_2_stack_3d_top_fill = "􀯮square.2.stack.3d.top.fill"
    /// 􀯭 square.2.stack.3d
    case square_2_stack_3d = "􀯭square.2.stack.3d"
    /// 􀙯 rectangle.and.arrow.up.right.and.arrow.down.left.slash
    case rectangle_and_arrow_up_right_and_arrow_down_left_slash = "􀙯rectangle.and.arrow.up.right.and.arrow.down.left.slash"
    /// 􀙮 rectangle.and.arrow.up.right.and.arrow.down.left
    case rectangle_and_arrow_up_right_and_arrow_down_left = "􀙮rectangle.and.arrow.up.right.and.arrow.down.left"
    /// 􀐸 rectangle.expand.vertical
    case rectangle_expand_vertical = "􀐸rectangle.expand.vertical"
    /// 􀐷 rectangle.compress.vertical
    case rectangle_compress_vertical = "􀐷rectangle.compress.vertical"
    /// 􀲯 hands.sparkles.fill
    case hands_sparkles_fill = "􀲯hands.sparkles.fill"
    /// 􀲮 hands.sparkles
    case hands_sparkles = "􀲮hands.sparkles"
    /// 􀟯 hands.clap.fill
    case hands_clap_fill = "􀟯hands.clap.fill"
    /// 􀟮 hands.clap
    case hands_clap = "􀟮hands.clap"
    /// 􀟱 hand.wave.fill
    case hand_wave_fill = "􀟱hand.wave.fill"
    /// 􀟰 hand.wave
    case hand_wave = "􀟰hand.wave"
    /// 􀤼 hand.point.down.fill
    case hand_point_down_fill = "􀤼hand.point.down.fill"
    /// 􀤻 hand.point.down
    case hand_point_down = "􀤻hand.point.down"
    /// 􀦃 hand.point.up.braille.fill
    case hand_point_up_braille_fill = "􀦃hand.point.up.braille.fill"
    /// 􀦂 hand.point.up.braille
    case hand_point_up_braille = "􀦂hand.point.up.braille"
    /// 􀤺 hand.point.up.fill
    case hand_point_up_fill = "􀤺hand.point.up.fill"
    /// 􀤹 hand.point.up
    case hand_point_up = "􀤹hand.point.up"
    /// 􀚀 hand.point.right.fill
    case hand_point_right_fill = "􀚀hand.point.right.fill"
    /// 􀙿 hand.point.right
    case hand_point_right = "􀙿hand.point.right"
    /// 􀙾 hand.point.left.fill
    case hand_point_left_fill = "􀙾hand.point.left.fill"
    /// 􀙽 hand.point.left
    case hand_point_left = "􀙽hand.point.left"
    /// 􀬂 hand.tap.fill
    case hand_tap_fill = "􀬂hand.tap.fill"
    /// 􀬁 hand.tap
    case hand_tap = "􀬁hand.tap"
    /// 􀖔 hand.draw.fill
    case hand_draw_fill = "􀖔hand.draw.fill"
    /// 􀖓 hand.draw
    case hand_draw = "􀖓hand.draw"
    /// 􀝱 hand.point.up.left.fill
    case hand_point_up_left_fill = "􀝱hand.point.up.left.fill"
    /// 􀝰 hand.point.up.left
    case hand_point_up_left = "􀝰hand.point.up.left"
    /// 􀊂 hand.thumbsdown.fill
    case hand_thumbsdown_fill = "􀊂hand.thumbsdown.fill"
    /// 􀊁 hand.thumbsdown
    case hand_thumbsdown = "􀊁hand.thumbsdown"
    /// 􀊀 hand.thumbsup.fill
    case hand_thumbsup_fill = "􀊀hand.thumbsup.fill"
    /// 􀉿 hand.thumbsup
    case hand_thumbsup = "􀉿hand.thumbsup"
    /// 􀉾 hand.raised.slash.fill
    case hand_raised_slash_fill = "􀉾hand.raised.slash.fill"
    /// 􀉽 hand.raised.slash
    case hand_raised_slash = "􀉽hand.raised.slash"
    /// 􀉼 hand.raised.fill
    case hand_raised_fill = "􀉼hand.raised.fill"
    /// 􀉻 hand.raised
    case hand_raised = "􀉻hand.raised"
    /// 􀪓 hearingaid.ear
    case hearingaid_ear = "􀪓hearingaid.ear"
    /// 􀞇 ear.fill
    case ear_fill = "􀞇ear.fill"
    /// 􀧁 ear.trianglebadge.exclamationmark
    case ear_trianglebadge_exclamationmark = "􀧁ear.trianglebadge.exclamationmark"
    /// 􀦿 ear.badge.checkmark
    case ear_badge_checkmark = "􀦿ear.badge.checkmark"
    /// 􀜣 ear
    case ear = "􀜣ear"
    /// 􀝽 figure.wave.circle.fill
    case figure_wave_circle_fill = "􀝽figure.wave.circle.fill"
    /// 􀝼 figure.wave.circle
    case figure_wave_circle = "􀝼figure.wave.circle"
    /// 􀝻 figure.wave
    case figure_wave = "􀝻figure.wave"
    /// 􀳿 figure.stand.line.dotted.figure.stand
    case figure_stand_line_dotted_figure_stand = "􀳿figure.stand.line.dotted.figure.stand"
    /// 􀳾 figure.stand
    case figure_stand = "􀳾figure.stand"
    /// 􀪣 figure.walk.diamond.fill
    case figure_walk_diamond_fill = "􀪣figure.walk.diamond.fill"
    /// 􀪢 figure.walk.diamond
    case figure_walk_diamond = "􀪢figure.walk.diamond"
    /// 􀝤 figure.walk.circle.fill
    case figure_walk_circle_fill = "􀝤figure.walk.circle.fill"
    /// 􀝣 figure.walk.circle
    case figure_walk_circle = "􀝣figure.walk.circle"
    /// 􀝢 figure.walk
    case figure_walk = "􀝢figure.walk"
    /// 􀝦 paintpalette.fill
    case paintpalette_fill = "􀝦paintpalette.fill"
    /// 􀝥 paintpalette
    case paintpalette = "􀝥paintpalette"
    /// 􀨞 zr.rectangle.roundedtop.fill
    case zr_rectangle_roundedtop_fill = "􀨞zr.rectangle.roundedtop.fill"
    /// 􀨝 zr.rectangle.roundedtop
    case zr_rectangle_roundedtop = "􀨝zr.rectangle.roundedtop"
    /// 􀨜 zl.rectangle.roundedtop.fill
    case zl_rectangle_roundedtop_fill = "􀨜zl.rectangle.roundedtop.fill"
    /// 􀨛 zl.rectangle.roundedtop
    case zl_rectangle_roundedtop = "􀨛zl.rectangle.roundedtop"
    /// 􀨚 rt.rectangle.roundedtop.fill
    case rt_rectangle_roundedtop_fill = "􀨚rt.rectangle.roundedtop.fill"
    /// 􀨙 rt.rectangle.roundedtop
    case rt_rectangle_roundedtop = "􀨙rt.rectangle.roundedtop"
    /// 􀨘 lt.rectangle.roundedtop.fill
    case lt_rectangle_roundedtop_fill = "􀨘lt.rectangle.roundedtop.fill"
    /// 􀨗 lt.rectangle.roundedtop
    case lt_rectangle_roundedtop = "􀨗lt.rectangle.roundedtop"
    /// 􀨖 rb.rectangle.roundedbottom.fill
    case rb_rectangle_roundedbottom_fill = "􀨖rb.rectangle.roundedbottom.fill"
    /// 􀨕 rb.rectangle.roundedbottom
    case rb_rectangle_roundedbottom = "􀨕rb.rectangle.roundedbottom"
    /// 􀨔 lb.rectangle.roundedbottom.fill
    case lb_rectangle_roundedbottom_fill = "􀨔lb.rectangle.roundedbottom.fill"
    /// 􀨓 lb.rectangle.roundedbottom
    case lb_rectangle_roundedbottom = "􀨓lb.rectangle.roundedbottom"
    /// 􀨒 r2.rectangle.roundedtop.fill
    case r2_rectangle_roundedtop_fill = "􀨒r2.rectangle.roundedtop.fill"
    /// 􀨑 r2.rectangle.roundedtop
    case r2_rectangle_roundedtop = "􀨑r2.rectangle.roundedtop"
    /// 􀨐 r1.rectangle.roundedbottom.fill
    case r1_rectangle_roundedbottom_fill = "􀨐r1.rectangle.roundedbottom.fill"
    /// 􀨏 r1.rectangle.roundedbottom
    case r1_rectangle_roundedbottom = "􀨏r1.rectangle.roundedbottom"
    /// 􀨎 r.rectangle.roundedbottom.fill
    case r_rectangle_roundedbottom_fill = "􀨎r.rectangle.roundedbottom.fill"
    /// 􀨍 r.rectangle.roundedbottom
    case r_rectangle_roundedbottom = "􀨍r.rectangle.roundedbottom"
    /// 􀨌 l2.rectangle.roundedtop.fill
    case l2_rectangle_roundedtop_fill = "􀨌l2.rectangle.roundedtop.fill"
    /// 􀨋 l2.rectangle.roundedtop
    case l2_rectangle_roundedtop = "􀨋l2.rectangle.roundedtop"
    /// 􀨊 l1.rectangle.roundedbottom.fill
    case l1_rectangle_roundedbottom_fill = "􀨊l1.rectangle.roundedbottom.fill"
    /// 􀨉 l1.rectangle.roundedbottom
    case l1_rectangle_roundedbottom = "􀨉l1.rectangle.roundedbottom"
    /// 􀨈 l.rectangle.roundedbottom.fill
    case l_rectangle_roundedbottom_fill = "􀨈l.rectangle.roundedbottom.fill"
    /// 􀨇 l.rectangle.roundedbottom
    case l_rectangle_roundedbottom = "􀨇l.rectangle.roundedbottom"
    /// 􀩻 rectangle.roundedbottom.fill
    case rectangle_roundedbottom_fill = "􀩻rectangle.roundedbottom.fill"
    /// 􀩺 rectangle.roundedbottom
    case rectangle_roundedbottom = "􀩺rectangle.roundedbottom"
    /// 􀩹 rectangle.roundedtop.fill
    case rectangle_roundedtop_fill = "􀩹rectangle.roundedtop.fill"
    /// 􀩸 rectangle.roundedtop
    case rectangle_roundedtop = "􀩸rectangle.roundedtop"
    /// 􀨆 triangle.circle.fill
    case triangle_circle_fill = "􀨆triangle.circle.fill"
    /// 􀨅 triangle.circle
    case triangle_circle = "􀨅triangle.circle"
    /// 􀨄 square.circle.fill
    case square_circle_fill = "􀨄square.circle.fill"
    /// 􀨃 square.circle
    case square_circle = "􀨃square.circle"
    /// 􀨂 circle.circle.fill
    case circle_circle_fill = "􀨂circle.circle.fill"
    /// 􀨁 circle.circle
    case circle_circle = "􀨁circle.circle"
    /// 􀨀 dpad.down.fill
    case dpad_down_fill = "􀨀dpad.down.fill"
    /// 􀧿 dpad.right.fill
    case dpad_right_fill = "􀧿dpad.right.fill"
    /// 􀧾 dpad.up.fill
    case dpad_up_fill = "􀧾dpad.up.fill"
    /// 􀧽 dpad.left.fill
    case dpad_left_fill = "􀧽dpad.left.fill"
    /// 􀧼 dpad.fill
    case dpad_fill = "􀧼dpad.fill"
    /// 􀨲 dpad
    case dpad = "􀨲dpad"
    /// 􀫄 r.joystick.down.fill
    case r_joystick_down_fill = "􀫄r.joystick.down.fill"
    /// 􀦕 r.joystick.down
    case r_joystick_down = "􀦕r.joystick.down"
    /// 􀫃 l.joystick.down.fill
    case l_joystick_down_fill = "􀫃l.joystick.down.fill"
    /// 􀦔 l.joystick.down
    case l_joystick_down = "􀦔l.joystick.down"
    /// 􀫂 r.joystick.fill
    case r_joystick_fill = "􀫂r.joystick.fill"
    /// 􀦓 r.joystick
    case r_joystick = "􀦓r.joystick"
    /// 􀫁 l.joystick.fill
    case l_joystick_fill = "􀫁l.joystick.fill"
    /// 􀦒 l.joystick
    case l_joystick = "􀦒l.joystick"
    /// 􀛹 gamecontroller.fill
    case gamecontroller_fill = "􀛹gamecontroller.fill"
    /// 􀛸 gamecontroller
    case gamecontroller = "􀛸gamecontroller"
    /// 􀯛 clock.arrow.2.circlepath
    case clock_arrow_2_circlepath = "􀯛clock.arrow.2.circlepath"
    /// 􀱨 exclamationmark.arrow.circlepath
    case exclamationmark_arrow_circlepath = "􀱨exclamationmark.arrow.circlepath"
    /// 􀣔 clock.arrow.circlepath
    case clock_arrow_circlepath = "􀣔clock.arrow.circlepath"
    /// 􀭄 timer.square
    case timer_square = "􀭄timer.square"
    /// 􀐱 timer
    case timer = "􀐱timer"
    /// 􀐰 stopwatch.fill
    case stopwatch_fill = "􀐰stopwatch.fill"
    /// 􀐯 stopwatch
    case stopwatch = "􀐯stopwatch"
    /// 􀐮 alarm.fill
    case alarm_fill = "􀐮alarm.fill"
    /// 􀐭 alarm
    case alarm = "􀐭alarm"
    /// 􀡒 deskclock.fill
    case deskclock_fill = "􀡒deskclock.fill"
    /// 􀡑 deskclock
    case deskclock = "􀡑deskclock"
    /// 􀐬 clock.fill
    case clock_fill = "􀐬clock.fill"
    /// 􀐫 clock
    case clock = "􀐫clock"
    /// 􀐪 helm
    case helm = "􀐪helm"
    /// 􀐩 scope
    case scope = "􀐩scope"
    /// 􀐣 livephoto.play
    case livephoto_play = "􀐣livephoto.play"
    /// 􀙔 livephoto.badge.a
    case livephoto_badge_a = "􀙔livephoto.badge.a"
    /// 􀐢 livephoto.slash
    case livephoto_slash = "􀐢livephoto.slash"
    /// 􀐡 livephoto
    case livephoto = "􀐡livephoto"
    /// 􀧏 square.stack.3d.forward.dottedline.fill
    case square_stack_3d_forward_dottedline_fill = "􀧏square.stack.3d.forward.dottedline.fill"
    /// 􀐠 square.stack.3d.forward.dottedline
    case square_stack_3d_forward_dottedline = "􀐠square.stack.3d.forward.dottedline"
    /// 􀙑 square.stack.3d.up.badge.a.fill
    case square_stack_3d_up_badge_a_fill = "􀙑square.stack.3d.up.badge.a.fill"
    /// 􀙐 square.stack.3d.up.badge.a
    case square_stack_3d_up_badge_a = "􀙐square.stack.3d.up.badge.a"
    /// 􀙓 square.stack.3d.up.slash.fill
    case square_stack_3d_up_slash_fill = "􀙓square.stack.3d.up.slash.fill"
    /// 􀙒 square.stack.3d.up.slash
    case square_stack_3d_up_slash = "􀙒square.stack.3d.up.slash"
    /// 􀐟 square.stack.3d.up.fill
    case square_stack_3d_up_fill = "􀐟square.stack.3d.up.fill"
    /// 􀐞 square.stack.3d.up
    case square_stack_3d_up = "􀐞square.stack.3d.up"
    /// 􀰴 square.stack.3d.down.forward.fill
    case square_stack_3d_down_forward_fill = "􀰴square.stack.3d.down.forward.fill"
    /// 􀰳 square.stack.3d.down.forward
    case square_stack_3d_down_forward = "􀰳square.stack.3d.down.forward"
    /// 􀐝 square.stack.3d.down.right.fill
    case square_stack_3d_down_right_fill = "􀐝square.stack.3d.down.right.fill"
    /// 􀐜 square.stack.3d.down.right
    case square_stack_3d_down_right = "􀐜square.stack.3d.down.right"
    /// 􀳌 pyramid.fill
    case pyramid_fill = "􀳌pyramid.fill"
    /// 􀳋 pyramid
    case pyramid = "􀳋pyramid"
    /// 􀳈 cone.fill
    case cone_fill = "􀳈cone.fill"
    /// 􀳇 cone
    case cone = "􀳇cone"
    /// 􀘸 arkit
    case arkit = "􀘸arkit"
    /// 􀐛 shippingbox.fill
    case shippingbox_fill = "􀐛shippingbox.fill"
    /// 􀐚 shippingbox
    case shippingbox = "􀐚shippingbox"
    /// 􀳴 cube.transparent.fill
    case cube_transparent_fill = "􀳴cube.transparent.fill"
    /// 􀬨 cube.transparent
    case cube_transparent = "􀬨cube.transparent"
    /// 􀐙 cube.fill
    case cube_fill = "􀐙cube.fill"
    /// 􀐘 cube
    case cube = "􀐘cube"
    /// 􀟲 slider.vertical.3
    case slider_vertical_3 = "􀟲slider.vertical.3"
    /// 􀰗 slider.horizontal.below.square.fill.and.square
    case slider_horizontal_below_square_fill_and_square = "􀰗slider.horizontal.below.square.fill.and.square"
    /// 􀐗 slider.horizontal.below.rectangle
    case slider_horizontal_below_rectangle = "􀐗slider.horizontal.below.rectangle"
    /// 􀌆 slider.horizontal.3
    case slider_horizontal_3 = "􀌆slider.horizontal.3"
    /// 􀬱 point.fill.topleft.down.curvedto.point.fill.bottomright.up
    case point_fill_topleft_down_curvedto_point_fill_bottomright_up = "􀬱point.fill.topleft.down.curvedto.point.fill.bottomright.up"
    /// 􀣱 point.topleft.down.curvedto.point.bottomright.up
    case point_topleft_down_curvedto_point_bottomright_up = "􀣱point.topleft.down.curvedto.point.bottomright.up"
    /// 􀜊 switch.2
    case switch_2 = "􀜊switch.2"
    /// 􀵔 shield.checkerboard
    case shield_checkerboard = "􀵔shield.checkerboard"
    /// 􀲊 shield.lefthalf.fill.slash
    case shield_lefthalf_fill_slash = "􀲊shield.lefthalf.fill.slash"
    /// 􀙨 shield.lefthalf.fill
    case shield_lefthalf_fill = "􀙨shield.lefthalf.fill"
    /// 􀞢 shield.slash.fill
    case shield_slash_fill = "􀞢shield.slash.fill"
    /// 􀙧 shield.fill
    case shield_fill = "􀙧shield.fill"
    /// 􀞡 shield.slash
    case shield_slash = "􀞡shield.slash"
    /// 􀙦 shield
    case shield = "􀙦shield"
    /// 􀩲 rectangle.connected.to.line.below
    case rectangle_connected_to_line_below = "􀩲rectangle.connected.to.line.below"
    /// 􀐖 flowchart.fill
    case flowchart_fill = "􀐖flowchart.fill"
    /// 􀐕 flowchart
    case flowchart = "􀐕flowchart"
    /// 􀐔 square.and.line.vertical.and.square.fill
    case square_and_line_vertical_and_square_fill = "􀐔square.and.line.vertical.and.square.fill"
    /// 􀐓 square.fill.and.line.vertical.and.square
    case square_fill_and_line_vertical_and_square = "􀐓square.fill.and.line.vertical.and.square"
    /// 􀐒 square.fill.and.line.vertical.square.fill
    case square_fill_and_line_vertical_square_fill = "􀐒square.fill.and.line.vertical.square.fill"
    /// 􀐑 square.and.line.vertical.and.square
    case square_and_line_vertical_and_square = "􀐑square.and.line.vertical.and.square"
    /// 􀐐 pano.fill
    case pano_fill = "􀐐pano.fill"
    /// 􀐏 pano
    case pano = "􀐏pano"
    /// 􀐌 square.stack.fill
    case square_stack_fill = "􀐌square.stack.fill"
    /// 􀐋 square.stack
    case square_stack = "􀐋square.stack"
    /// 􀩷 squareshape.controlhandles.on.squareshape.controlhandles
    case squareshape_controlhandles_on_squareshape_controlhandles = "􀩷squareshape.controlhandles.on.squareshape.controlhandles"
    /// 􀩶 square.on.square.squareshape.controlhandles
    case square_on_square_squareshape_controlhandles = "􀩶square.on.square.squareshape.controlhandles"
    /// 􀐊 square.fill.on.circle.fill
    case square_fill_on_circle_fill = "􀐊square.fill.on.circle.fill"
    /// 􀐉 square.on.circle
    case square_on_circle = "􀐉square.on.circle"
    /// 􀐈 plus.square.fill.on.square.fill
    case plus_square_fill_on_square_fill = "􀐈plus.square.fill.on.square.fill"
    /// 􀐇 plus.square.on.square
    case plus_square_on_square = "􀐇plus.square.on.square"
    /// 􀯇 square.on.square.dashed
    case square_on_square_dashed = "􀯇square.on.square.dashed"
    /// 􀰙 sparkles.square.fill.on.square
    case sparkles_square_fill_on_square = "􀰙sparkles.square.fill.on.square"
    /// 􀫝 square.fill.on.square
    case square_fill_on_square = "􀫝square.fill.on.square"
    /// 􀐆 square.fill.on.square.fill
    case square_fill_on_square_fill = "􀐆square.fill.on.square.fill"
    /// 􀐅 square.on.square
    case square_on_square = "􀐅square.on.square"
    /// 􀭝 h.square.fill.on.square.fill
    case h_square_fill_on_square_fill = "􀭝h.square.fill.on.square.fill"
    /// 􀭜 h.square.on.square
    case h_square_on_square = "􀭜h.square.on.square"
    /// 􀭛 j.square.fill.on.square.fill
    case j_square_fill_on_square_fill = "􀭛j.square.fill.on.square.fill"
    /// 􀭚 j.square.on.square
    case j_square_on_square = "􀭚j.square.on.square"
    /// 􀭙 r.square.fill.on.square.fill
    case r_square_fill_on_square_fill = "􀭙r.square.fill.on.square.fill"
    /// 􀭘 r.square.on.square
    case r_square_on_square = "􀭘r.square.on.square"
    /// 􀲴 sparkles.rectangle.stack.fill
    case sparkles_rectangle_stack_fill = "􀲴sparkles.rectangle.stack.fill"
    /// 􀲳 sparkles.rectangle.stack
    case sparkles_rectangle_stack = "􀲳sparkles.rectangle.stack"
    /// 􀏺 rectangle.stack.fill.badge.person.crop
    case rectangle_stack_fill_badge_person_crop = "􀏺rectangle.stack.fill.badge.person.crop"
    /// 􀏹 rectangle.stack.badge.person.crop
    case rectangle_stack_badge_person_crop = "􀏹rectangle.stack.badge.person.crop"
    /// 􀏴 rectangle.stack.fill.badge.minus
    case rectangle_stack_fill_badge_minus = "􀏴rectangle.stack.fill.badge.minus"
    /// 􀏳 rectangle.stack.badge.minus
    case rectangle_stack_badge_minus = "􀏳rectangle.stack.badge.minus"
    /// 􀏲 rectangle.stack.fill.badge.plus
    case rectangle_stack_fill_badge_plus = "􀏲rectangle.stack.fill.badge.plus"
    /// 􀏱 rectangle.stack.badge.plus
    case rectangle_stack_badge_plus = "􀏱rectangle.stack.badge.plus"
    /// 􀏮 rectangle.stack.fill
    case rectangle_stack_fill = "􀏮rectangle.stack.fill"
    /// 􀏭 rectangle.stack
    case rectangle_stack = "􀏭rectangle.stack"
    /// 􀣵 photo.on.rectangle.angled
    case photo_on_rectangle_angled = "􀣵photo.on.rectangle.angled"
    /// 􀑰 rectangle.fill.on.rectangle.angled.fill
    case rectangle_fill_on_rectangle_angled_fill = "􀑰rectangle.fill.on.rectangle.angled.fill"
    /// 􀑯 rectangle.on.rectangle.angled
    case rectangle_on_rectangle_angled = "􀑯rectangle.on.rectangle.angled"
    /// 􀏬 photo.fill.on.rectangle.fill
    case photo_fill_on_rectangle_fill = "􀏬photo.fill.on.rectangle.fill"
    /// 􀏫 photo.on.rectangle
    case photo_on_rectangle = "􀏫photo.on.rectangle"
    /// 􀏪 plus.rectangle.fill.on.rectangle.fill
    case plus_rectangle_fill_on_rectangle_fill = "􀏪plus.rectangle.fill.on.rectangle.fill"
    /// 􀏩 plus.rectangle.on.rectangle
    case plus_rectangle_on_rectangle = "􀏩plus.rectangle.on.rectangle"
    /// 􀤿 rectangle.fill.on.rectangle.fill.slash.fill
    case rectangle_fill_on_rectangle_fill_slash_fill = "􀤿rectangle.fill.on.rectangle.fill.slash.fill"
    /// 􀥀 rectangle.on.rectangle.slash
    case rectangle_on_rectangle_slash = "􀥀rectangle.on.rectangle.slash"
    /// 􀤾 rectangle.fill.on.rectangle.fill.circle.fill
    case rectangle_fill_on_rectangle_fill_circle_fill = "􀤾rectangle.fill.on.rectangle.fill.circle.fill"
    /// 􀤽 rectangle.fill.on.rectangle.fill.circle
    case rectangle_fill_on_rectangle_fill_circle = "􀤽rectangle.fill.on.rectangle.fill.circle"
    /// 􀏨 rectangle.fill.on.rectangle.fill
    case rectangle_fill_on_rectangle_fill = "􀏨rectangle.fill.on.rectangle.fill"
    /// 􀏧 rectangle.on.rectangle
    case rectangle_on_rectangle = "􀏧rectangle.on.rectangle"
    /// 􀏦 tablecells.badge.ellipsis.fill
    case tablecells_badge_ellipsis_fill = "􀏦tablecells.badge.ellipsis.fill"
    /// 􀏥 tablecells.badge.ellipsis
    case tablecells_badge_ellipsis = "􀏥tablecells.badge.ellipsis"
    /// 􀏤 tablecells.fill
    case tablecells_fill = "􀏤tablecells.fill"
    /// 􀏣 tablecells
    case tablecells = "􀏣tablecells"
    /// 􀧍 rectangle.split.2x2.fill
    case rectangle_split_2x2_fill = "􀧍rectangle.split.2x2.fill"
    /// 􀧌 rectangle.split.2x2
    case rectangle_split_2x2 = "􀧌rectangle.split.2x2"
    /// 􀧋 rectangle.split.1x2.fill
    case rectangle_split_1x2_fill = "􀧋rectangle.split.1x2.fill"
    /// 􀧊 rectangle.split.1x2
    case rectangle_split_1x2 = "􀧊rectangle.split.1x2"
    /// 􀧉 rectangle.split.2x1.fill
    case rectangle_split_2x1_fill = "􀧉rectangle.split.2x1.fill"
    /// 􀧈 rectangle.split.2x1
    case rectangle_split_2x1 = "􀧈rectangle.split.2x1"
    /// 􀘮 rectangle.split.3x3.fill
    case rectangle_split_3x3_fill = "􀘮rectangle.split.3x3.fill"
    /// 􀏢 rectangle.split.3x3
    case rectangle_split_3x3 = "􀏢rectangle.split.3x3"
    /// 􀏡 squares.below.rectangle
    case squares_below_rectangle = "􀏡squares.below.rectangle"
    /// 􀯬 mosaic.fill
    case mosaic_fill = "􀯬mosaic.fill"
    /// 􀯫 mosaic
    case mosaic = "􀯫mosaic"
    /// 􀡘 square.split.diagonal.fill
    case square_split_diagonal_fill = "􀡘square.split.diagonal.fill"
    /// 􀡗 square.split.diagonal
    case square_split_diagonal = "􀡗square.split.diagonal"
    /// 􀕳 square.split.diagonal.2x2.fill
    case square_split_diagonal_2x2_fill = "􀕳square.split.diagonal.2x2.fill"
    /// 􀕲 square.split.diagonal.2x2
    case square_split_diagonal_2x2 = "􀕲square.split.diagonal.2x2"
    /// 􀕯 square.split.2x2.fill
    case square_split_2x2_fill = "􀕯square.split.2x2.fill"
    /// 􀕮 square.split.2x2
    case square_split_2x2 = "􀕮square.split.2x2"
    /// 􀕱 square.split.1x2.fill
    case square_split_1x2_fill = "􀕱square.split.1x2.fill"
    /// 􀕰 square.split.1x2
    case square_split_1x2 = "􀕰square.split.1x2"
    /// 􀘜 square.split.2x1.fill
    case square_split_2x1_fill = "􀘜square.split.2x1.fill"
    /// 􀏠 square.split.2x1
    case square_split_2x1 = "􀏠square.split.2x1"
    /// 􀕸 rectangle.split.3x1.fill
    case rectangle_split_3x1_fill = "􀕸rectangle.split.3x1.fill"
    /// 􀏟 rectangle.split.3x1
    case rectangle_split_3x1 = "􀏟rectangle.split.3x1"
    /// 􀏝 uiwindow.split.2x1
    case uiwindow_split_2x1 = "􀏝uiwindow.split.2x1"
    /// 􀤯 keyboard.macwindow
    case keyboard_macwindow = "􀤯keyboard.macwindow"
    /// 􀣚 text.and.command.macwindow
    case text_and_command_macwindow = "􀣚text.and.command.macwindow"
    /// 􀢌 macwindow.on.rectangle
    case macwindow_on_rectangle = "􀢌macwindow.on.rectangle"
    /// 􀤁 menubar.arrow.down.rectangle
    case menubar_arrow_down_rectangle = "􀤁menubar.arrow.down.rectangle"
    /// 􀤀 menubar.arrow.up.rectangle
    case menubar_arrow_up_rectangle = "􀤀menubar.arrow.up.rectangle"
    /// 􀣑 menubar.dock.rectangle.badge.record
    case menubar_dock_rectangle_badge_record = "􀣑menubar.dock.rectangle.badge.record"
    /// 􀣰 menubar.dock.rectangle
    case menubar_dock_rectangle = "􀣰menubar.dock.rectangle"
    /// 􀦍 menubar.rectangle
    case menubar_rectangle = "􀦍menubar.rectangle"
    /// 􀣿 dock.arrow.down.rectangle
    case dock_arrow_down_rectangle = "􀣿dock.arrow.down.rectangle"
    /// 􀣾 dock.arrow.up.rectangle
    case dock_arrow_up_rectangle = "􀣾dock.arrow.up.rectangle"
    /// 􀏞 dock.rectangle
    case dock_rectangle = "􀏞dock.rectangle"
    /// 􀥃 macwindow.badge.plus
    case macwindow_badge_plus = "􀥃macwindow.badge.plus"
    /// 􀏜 macwindow
    case macwindow = "􀏜macwindow"
    /// 􀱧 sidebar.squares.trailing
    case sidebar_squares_trailing = "􀱧sidebar.squares.trailing"
    /// 􀱦 sidebar.squares.leading
    case sidebar_squares_leading = "􀱦sidebar.squares.leading"
    /// 􀱥 sidebar.squares.right
    case sidebar_squares_right = "􀱥sidebar.squares.right"
    /// 􀱤 sidebar.squares.left
    case sidebar_squares_left = "􀱤sidebar.squares.left"
    /// 􀰲 sidebar.trailing
    case sidebar_trailing = "􀰲sidebar.trailing"
    /// 􀰱 sidebar.leading
    case sidebar_leading = "􀰱sidebar.leading"
    /// 􀏛 sidebar.right
    case sidebar_right = "􀏛sidebar.right"
    /// 􀏚 sidebar.left
    case sidebar_left = "􀏚sidebar.left"
    /// 􀵛 rectangle.fill.badge.person.crop
    case rectangle_fill_badge_person_crop = "􀵛rectangle.fill.badge.person.crop"
    /// 􀵚 rectangle.badge.person.crop
    case rectangle_badge_person_crop = "􀵚rectangle.badge.person.crop"
    /// 􀏘 rectangle.fill.badge.xmark
    case rectangle_fill_badge_xmark = "􀏘rectangle.fill.badge.xmark"
    /// 􀏗 rectangle.badge.xmark
    case rectangle_badge_xmark = "􀏗rectangle.badge.xmark"
    /// 􀏖 rectangle.fill.badge.checkmark
    case rectangle_fill_badge_checkmark = "􀏖rectangle.fill.badge.checkmark"
    /// 􀏕 rectangle.badge.checkmark
    case rectangle_badge_checkmark = "􀏕rectangle.badge.checkmark"
    /// 􀏔 rectangle.fill.badge.minus
    case rectangle_fill_badge_minus = "􀏔rectangle.fill.badge.minus"
    /// 􀏓 rectangle.badge.minus
    case rectangle_badge_minus = "􀏓rectangle.badge.minus"
    /// 􀏒 rectangle.fill.badge.plus
    case rectangle_fill_badge_plus = "􀏒rectangle.fill.badge.plus"
    /// 􀏑 rectangle.badge.plus
    case rectangle_badge_plus = "􀏑rectangle.badge.plus"
    /// 􀥂 rectangle.dashed.badge.record
    case rectangle_dashed_badge_record = "􀥂rectangle.dashed.badge.record"
    /// 􀥁 rectangle.dashed
    case rectangle_dashed = "􀥁rectangle.dashed"
    /// 􀨺 camera.aperture
    case camera_aperture = "􀨺camera.aperture"
    /// 􀢰 camera.metering.unknown
    case camera_metering_unknown = "􀢰camera.metering.unknown"
    /// 􀢯 camera.metering.spot
    case camera_metering_spot = "􀢯camera.metering.spot"
    /// 􀢮 camera.metering.partial
    case camera_metering_partial = "􀢮camera.metering.partial"
    /// 􀢭 camera.metering.none
    case camera_metering_none = "􀢭camera.metering.none"
    /// 􀢬 camera.metering.multispot
    case camera_metering_multispot = "􀢬camera.metering.multispot"
    /// 􀢫 camera.metering.matrix
    case camera_metering_matrix = "􀢫camera.metering.matrix"
    /// 􀢪 camera.metering.center.weighted
    case camera_metering_center_weighted = "􀢪camera.metering.center.weighted"
    /// 􀞲 camera.metering.center.weighted.average
    case camera_metering_center_weighted_average = "􀞲camera.metering.center.weighted.average"
    /// 􀪫 checkerboard.rectangle
    case checkerboard_rectangle = "􀪫checkerboard.rectangle"
    /// 􀲲 text.below.photo.fill
    case text_below_photo_fill = "􀲲text.below.photo.fill"
    /// 􀲱 text.below.photo
    case text_below_photo = "􀲱text.below.photo"
    /// 􀏆 photo.fill
    case photo_fill = "􀏆photo.fill"
    /// 􀏅 photo
    case photo = "􀏅photo"
    /// 􀪪 arrow.up.and.person.rectangle.turn.left
    case arrow_up_and_person_rectangle_turn_left = "􀪪arrow.up.and.person.rectangle.turn.left"
    /// 􀪩 arrow.up.and.person.rectangle.turn.right
    case arrow_up_and_person_rectangle_turn_right = "􀪩arrow.up.and.person.rectangle.turn.right"
    /// 􀪨 arrow.up.and.person.rectangle.portrait
    case arrow_up_and_person_rectangle_portrait = "􀪨arrow.up.and.person.rectangle.portrait"
    /// 􀏐 person.crop.rectangle.fill
    case person_crop_rectangle_fill = "􀏐person.crop.rectangle.fill"
    /// 􀏏 person.crop.rectangle
    case person_crop_rectangle = "􀏏person.crop.rectangle"
    /// 􀤷 rectangle.righthalf.fill
    case rectangle_righthalf_fill = "􀤷rectangle.righthalf.fill"
    /// 􀤶 rectangle.lefthalf.fill
    case rectangle_lefthalf_fill = "􀤶rectangle.lefthalf.fill"
    /// 􀥟 rectangle.righthalf.inset.fill.arrow.right
    case rectangle_righthalf_inset_fill_arrow_right = "􀥟rectangle.righthalf.inset.fill.arrow.right"
    /// 􀥞 rectangle.lefthalf.inset.fill.arrow.left
    case rectangle_lefthalf_inset_fill_arrow_left = "􀥞rectangle.lefthalf.inset.fill.arrow.left"
    /// 􀭶 rectangle.inset.bottomright.fill
    case rectangle_inset_bottomright_fill = "􀭶rectangle.inset.bottomright.fill"
    /// 􀭵 rectangle.inset.bottomleft.fill
    case rectangle_inset_bottomleft_fill = "􀭵rectangle.inset.bottomleft.fill"
    /// 􀭴 rectangle.inset.topright.fill
    case rectangle_inset_topright_fill = "􀭴rectangle.inset.topright.fill"
    /// 􀭳 rectangle.inset.topleft.fill
    case rectangle_inset_topleft_fill = "􀭳rectangle.inset.topleft.fill"
    /// 􀥝 rectangle.center.inset.fill
    case rectangle_center_inset_fill = "􀥝rectangle.center.inset.fill"
    /// 􀨩 rectangle.rightthird.inset.fill
    case rectangle_rightthird_inset_fill = "􀨩rectangle.rightthird.inset.fill"
    /// 􀨱 rectangle.leftthird.inset.fill
    case rectangle_leftthird_inset_fill = "􀨱rectangle.leftthird.inset.fill"
    /// 􀨨 rectangle.bottomthird.inset.fill
    case rectangle_bottomthird_inset_fill = "􀨨rectangle.bottomthird.inset.fill"
    /// 􀴊 rectangle.topthird.inset
    case rectangle_topthird_inset = "􀴊rectangle.topthird.inset"
    /// 􀤵 rectangle.righthalf.inset.fill
    case rectangle_righthalf_inset_fill = "􀤵rectangle.righthalf.inset.fill"
    /// 􀤴 rectangle.lefthalf.inset.fill
    case rectangle_lefthalf_inset_fill = "􀤴rectangle.lefthalf.inset.fill"
    /// 􀤳 rectangle.inset.fill
    case rectangle_inset_fill = "􀤳rectangle.inset.fill"
    /// 􀲏 person.fill.viewfinder
    case person_fill_viewfinder = "􀲏person.fill.viewfinder"
    /// 􀮄 location.fill.viewfinder
    case location_fill_viewfinder = "􀮄location.fill.viewfinder"
    /// 􀮃 location.viewfinder
    case location_viewfinder = "􀮃location.viewfinder"
    /// 􀡢 doc.text.fill.viewfinder
    case doc_text_fill_viewfinder = "􀡢doc.text.fill.viewfinder"
    /// 􀎾 doc.text.viewfinder
    case doc_text_viewfinder = "􀎾doc.text.viewfinder"
    /// 􀎽 faceid
    case faceid = "􀎽faceid"
    /// 􀎼 camera.viewfinder
    case camera_viewfinder = "􀎼camera.viewfinder"
    /// 􀥄 plus.viewfinder
    case plus_viewfinder = "􀥄plus.viewfinder"
    /// 􀎻 qrcode.viewfinder
    case qrcode_viewfinder = "􀎻qrcode.viewfinder"
    /// 􀎺 barcode.viewfinder
    case barcode_viewfinder = "􀎺barcode.viewfinder"
    /// 􀏀 viewfinder.circle.fill
    case viewfinder_circle_fill = "􀏀viewfinder.circle.fill"
    /// 􀎿 viewfinder.circle
    case viewfinder_circle = "􀎿viewfinder.circle"
    /// 􀎹 viewfinder
    case viewfinder = "􀎹viewfinder"
    /// 􀘱 barcode
    case barcode = "􀘱barcode"
    /// 􀖂 qrcode
    case qrcode = "􀖂qrcode"
    /// 􀦉 comb.fill
    case comb_fill = "􀦉comb.fill"
    /// 􀦈 comb
    case comb = "􀦈comb"
    /// 􀦆 crown.fill
    case crown_fill = "􀦆crown.fill"
    /// 􀦅 crown
    case crown = "􀦅crown"
    /// 􀨸 face.dashed.fill
    case face_dashed_fill = "􀨸face.dashed.fill"
    /// 􀥧 face.dashed
    case face_dashed = "􀥧face.dashed"
    /// 􀙌 face.smiling.fill
    case face_smiling_fill = "􀙌face.smiling.fill"
    /// 􀎸 face.smiling
    case face_smiling = "􀎸face.smiling"
    /// 􀝑 sportscourt.fill
    case sportscourt_fill = "􀝑sportscourt.fill"
    /// 􀝐 sportscourt
    case sportscourt = "􀝐sportscourt"
    /// 􀎷 film.fill
    case film_fill = "􀎷film.fill"
    /// 􀎶 film
    case film = "􀎶film"
    /// 􀙜 leaf.arrow.triangle.circlepath
    case leaf_arrow_triangle_circlepath = "􀙜leaf.arrow.triangle.circlepath"
    /// 􀥳 leaf.fill
    case leaf_fill = "􀥳leaf.fill"
    /// 􀥲 leaf
    case leaf = "􀥲leaf"
    /// 􀯕 ladybug.fill
    case ladybug_fill = "􀯕ladybug.fill"
    /// 􀯔 ladybug
    case ladybug = "􀯔ladybug"
    /// 􀌝 ant.circle.fill
    case ant_circle_fill = "􀌝ant.circle.fill"
    /// 􀌜 ant.circle
    case ant_circle = "􀌜ant.circle"
    /// 􀌛 ant.fill
    case ant_fill = "􀌛ant.fill"
    /// 􀌚 ant
    case ant = "􀌚ant"
    /// 􀓑 tortoise.fill
    case tortoise_fill = "􀓑tortoise.fill"
    /// 􀓐 tortoise
    case tortoise = "􀓐tortoise"
    /// 􀓏 hare.fill
    case hare_fill = "􀓏hare.fill"
    /// 􀓎 hare
    case hare = "􀓎hare"
    /// 􀣟 cross.circle.fill
    case cross_circle_fill = "􀣟cross.circle.fill"
    /// 􀣞 cross.circle
    case cross_circle = "􀣞cross.circle"
    /// 􀣝 cross.fill
    case cross_fill = "􀣝cross.fill"
    /// 􀣜 cross
    case cross = "􀣜cross"
    /// 􀠲 pills.fill
    case pills_fill = "􀠲pills.fill"
    /// 􀠱 pills
    case pills = "􀠱pills"
    /// 􀦛 lungs.fill
    case lungs_fill = "􀦛lungs.fill"
    /// 􀦚 lungs
    case lungs = "􀦚lungs"
    /// 􀙪 bed.double.fill
    case bed_double_fill = "􀙪bed.double.fill"
    /// 􀙩 bed.double
    case bed_double = "􀙩bed.double"
    /// 􀱭 bicycle.circle.fill
    case bicycle_circle_fill = "􀱭bicycle.circle.fill"
    /// 􀱬 bicycle.circle
    case bicycle_circle = "􀱬bicycle.circle"
    /// 􀡥 bicycle
    case bicycle = "􀡥bicycle"
    /// 􀜝 tram.tunnel.fill
    case tram_tunnel_fill = "􀜝tram.tunnel.fill"
    /// 􀲜 tram.circle.fill
    case tram_circle_fill = "􀲜tram.circle.fill"
    /// 􀲛 tram.circle
    case tram_circle = "􀲛tram.circle"
    /// 􀝇 tram.fill
    case tram_fill = "􀝇tram.fill"
    /// 􀝆 tram
    case tram = "􀝆tram"
    /// 􀜜 bus.doubledecker.fill
    case bus_doubledecker_fill = "􀜜bus.doubledecker.fill"
    /// 􀜛 bus.doubledecker
    case bus_doubledecker = "􀜛bus.doubledecker"
    /// 􀝉 bus.fill
    case bus_fill = "􀝉bus.fill"
    /// 􀝈 bus
    case bus = "􀝈bus"
    /// 􀝅 car.2.fill
    case car_2_fill = "􀝅car.2.fill"
    /// 􀝄 car.2
    case car_2 = "􀝄car.2"
    /// 􀝃 bolt.car.fill
    case bolt_car_fill = "􀝃bolt.car.fill"
    /// 􀡞 bolt.car
    case bolt_car = "􀡞bolt.car"
    /// 􀭰 car.circle.fill
    case car_circle_fill = "􀭰car.circle.fill"
    /// 􀭯 car.circle
    case car_circle = "􀭯car.circle"
    /// 􀙙 car.fill
    case car_fill = "􀙙car.fill"
    /// 􀙘 car
    case car = "􀙘car"
    /// 􀟑 guitars.fill
    case guitars_fill = "􀟑guitars.fill"
    /// 􀑭 guitars
    case guitars = "􀑭guitars"
    /// 􀫼 rectangle.portrait.arrowtriangle.2.inward
    case rectangle_portrait_arrowtriangle_2_inward = "􀫼rectangle.portrait.arrowtriangle.2.inward"
    /// 􀫻 rectangle.portrait.arrowtriangle.2.outward
    case rectangle_portrait_arrowtriangle_2_outward = "􀫻rectangle.portrait.arrowtriangle.2.outward"
    /// 􀫺 rectangle.arrowtriangle.2.inward
    case rectangle_arrowtriangle_2_inward = "􀫺rectangle.arrowtriangle.2.inward"
    /// 􀫹 rectangle.arrowtriangle.2.outward
    case rectangle_arrowtriangle_2_outward = "􀫹rectangle.arrowtriangle.2.outward"
    /// 􀭲 pip.remove
    case pip_remove = "􀭲pip.remove"
    /// 􀭱 pip.swap
    case pip_swap = "􀭱pip.swap"
    /// 􀑨 pip.enter
    case pip_enter = "􀑨pip.enter"
    /// 􀑧 pip.exit
    case pip_exit = "􀑧pip.exit"
    /// 􀠴 pip.fill
    case pip_fill = "􀠴pip.fill"
    /// 􀠳 pip
    case pip = "􀠳pip"
    /// 􀖀 antenna.radiowaves.left.and.right
    case antenna_radiowaves_left_and_right = "􀖀antenna.radiowaves.left.and.right"
    /// 􀱝 wave.3.forward.circle.fill
    case wave_3_forward_circle_fill = "􀱝wave.3.forward.circle.fill"
    /// 􀱜 wave.3.forward.circle
    case wave_3_forward_circle = "􀱜wave.3.forward.circle"
    /// 􀱛 wave.3.forward
    case wave_3_forward = "􀱛wave.3.forward"
    /// 􀭺 wave.3.right.circle.fill
    case wave_3_right_circle_fill = "􀭺wave.3.right.circle.fill"
    /// 􀭹 wave.3.right.circle
    case wave_3_right_circle = "􀭹wave.3.right.circle"
    /// 􀙲 wave.3.right
    case wave_3_right = "􀙲wave.3.right"
    /// 􀱚 wave.3.backward.circle.fill
    case wave_3_backward_circle_fill = "􀱚wave.3.backward.circle.fill"
    /// 􀱙 wave.3.backward.circle
    case wave_3_backward_circle = "􀱙wave.3.backward.circle"
    /// 􀱘 wave.3.backward
    case wave_3_backward = "􀱘wave.3.backward"
    /// 􀭸 wave.3.left.circle.fill
    case wave_3_left_circle_fill = "􀭸wave.3.left.circle.fill"
    /// 􀭷 wave.3.left.circle
    case wave_3_left_circle = "􀭷wave.3.left.circle"
    /// 􀙱 wave.3.left
    case wave_3_left = "􀙱wave.3.left"
    /// 􀰭 dot.radiowaves.forward
    case dot_radiowaves_forward = "􀰭dot.radiowaves.forward"
    /// 􀖒 dot.radiowaves.right
    case dot_radiowaves_right = "􀖒dot.radiowaves.right"
    /// 􀌙 dot.radiowaves.left.and.right
    case dot_radiowaves_left_and_right = "􀌙dot.radiowaves.left.and.right"
    /// 􀑢 airplayaudio
    case airplayaudio = "􀑢airplayaudio"
    /// 􀑡 airplayvideo
    case airplayvideo = "􀑡airplayvideo"
    /// 􀯍 signpost.right.fill
    case signpost_right_fill = "􀯍signpost.right.fill"
    /// 􀯌 signpost.right
    case signpost_right = "􀯌signpost.right"
    /// 􀰰 signpost.left.fill
    case signpost_left_fill = "􀰰signpost.left.fill"
    /// 􀰯 signpost.left
    case signpost_left = "􀰯signpost.left"
    /// 􀡴 appletv.fill
    case appletv_fill = "􀡴appletv.fill"
    /// 􀨫 appletv
    case appletv = "􀨫appletv"
    /// 􀪕 radio.fill
    case radio_fill = "􀪕radio.fill"
    /// 􀪔 radio
    case radio = "􀪔radio"
    /// 􀟶 hifispeaker.2.fill
    case hifispeaker_2_fill = "􀟶hifispeaker.2.fill"
    /// 􀟵 hifispeaker.2
    case hifispeaker_2 = "􀟵hifispeaker.2"
    /// 􀝏 hifispeaker.fill
    case hifispeaker_fill = "􀝏hifispeaker.fill"
    /// 􀝎 hifispeaker
    case hifispeaker = "􀝎hifispeaker"
    /// 􀟴 hifispeaker.and.homepod.fill
    case hifispeaker_and_homepod_fill = "􀟴hifispeaker.and.homepod.fill"
    /// 􀮎 hifispeaker.and.homepod
    case hifispeaker_and_homepod = "􀮎hifispeaker.and.homepod"
    /// 􀟳 homepod.2.fill
    case homepod_2_fill = "􀟳homepod.2.fill"
    /// 􀮍 homepod.2
    case homepod_2 = "􀮍homepod.2"
    /// 􀟣 homepod.fill
    case homepod_fill = "􀟣homepod.fill"
    /// 􀟢 homepod
    case homepod = "􀟢homepod"
    /// 􀲎 airpodpro.left
    case airpodpro_left = "􀲎airpodpro.left"
    /// 􀲍 airpodpro.right
    case airpodpro_right = "􀲍airpodpro.right"
    /// 􀪷 airpodspro
    case airpodspro = "􀪷airpodspro"
    /// 􀲌 airpod.left
    case airpod_left = "􀲌airpod.left"
    /// 􀲋 airpod.right
    case airpod_right = "􀲋airpod.right"
    /// 􀟥 airpods
    case airpods = "􀟥airpods"
    /// 􀠦 earpods
    case earpods = "􀠦earpods"
    /// 􀨶 applewatch.slash
    case applewatch_slash = "􀨶applewatch.slash"
    /// 􀢷 applewatch.radiowaves.left.and.right
    case applewatch_radiowaves_left_and_right = "􀢷applewatch.radiowaves.left.and.right"
    /// 􀵅 lock.applewatch
    case lock_applewatch = "􀵅lock.applewatch"
    /// 􀵄 exclamationmark.applewatch
    case exclamationmark_applewatch = "􀵄exclamationmark.applewatch"
    /// 􀫋 applewatch.watchface
    case applewatch_watchface = "􀫋applewatch.watchface"
    /// 􀟤 applewatch
    case applewatch = "􀟤applewatch"
    /// 􀮖 apps.ipad.landscape
    case apps_ipad_landscape = "􀮖apps.ipad.landscape"
    /// 􀥔 ipad.landscape
    case ipad_landscape = "􀥔ipad.landscape"
    /// 􀥓 ipad.homebutton.landscape
    case ipad_homebutton_landscape = "􀥓ipad.homebutton.landscape"
    /// 􀮕 apps.ipad
    case apps_ipad = "􀮕apps.ipad"
    /// 􀟠 ipad
    case ipad = "􀟠ipad"
    /// 􀟟 ipad.homebutton
    case ipad_homebutton = "􀟟ipad.homebutton"
    /// 􀫫 ipodshuffle.gen4
    case ipodshuffle_gen4 = "􀫫ipodshuffle.gen4"
    /// 􀫪 ipodshuffle.gen3
    case ipodshuffle_gen3 = "􀫪ipodshuffle.gen3"
    /// 􀫩 ipodshuffle.gen2
    case ipodshuffle_gen2 = "􀫩ipodshuffle.gen2"
    /// 􀫨 ipodshuffle.gen1
    case ipodshuffle_gen1 = "􀫨ipodshuffle.gen1"
    /// 􀴐 ipodtouch.landscape
    case ipodtouch_landscape = "􀴐ipodtouch.landscape"
    /// 􀫧 ipodtouch
    case ipodtouch = "􀫧ipodtouch"
    /// 􀮔 apps.iphone.landscape
    case apps_iphone_landscape = "􀮔apps.iphone.landscape"
    /// 􀯖 apps.iphone.badge.plus
    case apps_iphone_badge_plus = "􀯖apps.iphone.badge.plus"
    /// 􀟞 apps.iphone
    case apps_iphone = "􀟞apps.iphone"
    /// 􀬬 arrow.turn.up.forward.iphone.fill
    case arrow_turn_up_forward_iphone_fill = "􀬬arrow.turn.up.forward.iphone.fill"
    /// 􀬫 arrow.turn.up.forward.iphone
    case arrow_turn_up_forward_iphone = "􀬫arrow.turn.up.forward.iphone"
    /// 􀵒 ipad.landscape.badge.play
    case ipad_landscape_badge_play = "􀵒ipad.landscape.badge.play"
    /// 􀵑 ipad.homebutton.landscape.badge.play
    case ipad_homebutton_landscape_badge_play = "􀵑ipad.homebutton.landscape.badge.play"
    /// 􀴓 ipad.badge.play
    case ipad_badge_play = "􀴓ipad.badge.play"
    /// 􀴒 ipad.homebutton.badge.play
    case ipad_homebutton_badge_play = "􀴒ipad.homebutton.badge.play"
    /// 􀴑 iphone.badge.play
    case iphone_badge_play = "􀴑iphone.badge.play"
    /// 􀐶 iphone.homebutton.badge.play
    case iphone_homebutton_badge_play = "􀐶iphone.homebutton.badge.play"
    /// 􀨵 iphone.slash
    case iphone_slash = "􀨵iphone.slash"
    /// 􀡇 iphone.radiowaves.left.and.right
    case iphone_radiowaves_left_and_right = "􀡇iphone.radiowaves.left.and.right"
    /// 􀴏 iphone.landscape
    case iphone_landscape = "􀴏iphone.landscape"
    /// 􀟜 iphone
    case iphone = "􀟜iphone"
    /// 􀨴 iphone.homebutton.slash
    case iphone_homebutton_slash = "􀨴iphone.homebutton.slash"
    /// 􀡆 iphone.homebutton.radiowaves.left.and.right
    case iphone_homebutton_radiowaves_left_and_right = "􀡆iphone.homebutton.radiowaves.left.and.right"
    /// 􀴎 iphone.homebutton.landscape
    case iphone_homebutton_landscape = "􀴎iphone.homebutton.landscape"
    /// 􀟝 iphone.homebutton
    case iphone_homebutton = "􀟝iphone.homebutton"
    /// 􀪳 candybarphone
    case candybarphone = "􀪳candybarphone"
    /// 􀪴 flipphone
    case flipphone = "􀪴flipphone"
    /// 􀢺 ipod
    case ipod = "􀢺ipod"
    /// 􀑝 airport.extreme
    case airport_extreme = "􀑝airport.extreme"
    /// 􀦰 airport.extreme.tower
    case airport_extreme_tower = "􀦰airport.extreme.tower"
    /// 􀦯 airport.express
    case airport_express = "􀦯airport.express"
    /// 􀪰 macmini.fill
    case macmini_fill = "􀪰macmini.fill"
    /// 􀪯 macmini
    case macmini = "􀪯macmini"
    /// 􀬩 laptopcomputer.and.iphone
    case laptopcomputer_and_iphone = "􀬩laptopcomputer.and.iphone"
    /// 􀟛 laptopcomputer
    case laptopcomputer = "􀟛laptopcomputer"
    /// 􀨳 macpro.gen3.server
    case macpro_gen3_server = "􀨳macpro.gen3.server"
    /// 􀧘 xserve
    case xserve = "􀧘xserve"
    /// 􀪬 server.rack
    case server_rack = "􀪬server.rack"
    /// 􀪱 macpro.gen3
    case macpro_gen3 = "􀪱macpro.gen3"
    /// 􀦮 macpro.gen2.fill
    case macpro_gen2_fill = "􀦮macpro.gen2.fill"
    /// 􀦱 macpro.gen2
    case macpro_gen2 = "􀦱macpro.gen2"
    /// 􀪲 macpro.gen1
    case macpro_gen1 = "􀪲macpro.gen1"
    /// 􀥺 pc
    case pc = "􀥺pc"
    /// 􀙗 desktopcomputer
    case desktopcomputer = "􀙗desktopcomputer"
    /// 􀨧 display.2
    case display_2 = "􀨧display.2"
    /// 􀨦 display.trianglebadge.exclamationmark
    case display_trianglebadge_exclamationmark = "􀨦display.trianglebadge.exclamationmark"
    /// 􀢹 display
    case display = "􀢹display"
    /// 􀲰 tv.and.mediabox
    case tv_and_mediabox = "􀲰tv.and.mediabox"
    /// 􀫑 tv.and.hifispeaker.fill
    case tv_and_hifispeaker_fill = "􀫑tv.and.hifispeaker.fill"
    /// 􀵪 photo.tv
    case photo_tv = "􀵪photo.tv"
    /// 􀵩 play.tv.fill
    case play_tv_fill = "􀵩play.tv.fill"
    /// 􀵨 play.tv
    case play_tv = "􀵨play.tv"
    /// 􀒷 tv.music.note.fill
    case tv_music_note_fill = "􀒷tv.music.note.fill"
    /// 􀎵 tv.music.note
    case tv_music_note = "􀎵tv.music.note"
    /// 􀦾 4k.tv.fill
    case N4k_tv_fill = "􀦾4k.tv.fill"
    /// 􀦽 4k.tv
    case N4k_tv = "􀦽4k.tv"
    /// 􀎴 tv.circle.fill
    case tv_circle_fill = "􀎴tv.circle.fill"
    /// 􀎳 tv.circle
    case tv_circle = "􀎳tv.circle"
    /// 􀒶 tv.fill
    case tv_fill = "􀒶tv.fill"
    /// 􀎲 tv
    case tv = "􀎲tv"
    /// 􀢸 opticaldisc
    case opticaldisc = "􀢸opticaldisc"
    /// 􀫦 memorychip
    case memorychip = "􀫦memorychip"
    /// 􀫥 cpu
    case cpu = "􀫥cpu"
    /// 􀣂 timeline.selection
    case timeline_selection = "􀣂timeline.selection"
    /// 􀑠 selection.pin.in.out
    case selection_pin_in_out = "􀑠selection.pin.in.out"
    /// 􀎱 rotate.right.fill
    case rotate_right_fill = "􀎱rotate.right.fill"
    /// 􀎰 rotate.right
    case rotate_right = "􀎰rotate.right"
    /// 􀎯 rotate.left.fill
    case rotate_left_fill = "􀎯rotate.left.fill"
    /// 􀎮 rotate.left
    case rotate_left = "􀎮rotate.left"
    /// 􀴌 torus
    case torus = "􀴌torus"
    /// 􀢇 rotate.3d
    case rotate_3d = "􀢇rotate.3d"
    /// 􀢆 scale.3d
    case scale_3d = "􀢆scale.3d"
    /// 􀢅 move.3d
    case move_3d = "􀢅move.3d"
    /// 􀎭 safari.fill
    case safari_fill = "􀎭safari.fill"
    /// 􀎬 safari
    case safari = "􀎬safari"
    /// 􀙋 map.fill
    case map_fill = "􀙋map.fill"
    /// 􀙊 map
    case map = "􀙊map"
    /// 􀎫 mappin.and.ellipse
    case mappin_and_ellipse = "􀎫mappin.and.ellipse"
    /// 􀙉 mappin.slash
    case mappin_slash = "􀙉mappin.slash"
    /// 􀜈 mappin.circle.fill
    case mappin_circle_fill = "􀜈mappin.circle.fill"
    /// 􀜇 mappin.circle
    case mappin_circle = "􀜇mappin.circle"
    /// 􀎪 mappin
    case mappin = "􀎪mappin"
    /// 􀎩 pin.slash.fill
    case pin_slash_fill = "􀎩pin.slash.fill"
    /// 􀎨 pin.slash
    case pin_slash = "􀎨pin.slash"
    /// 􀒵 pin.circle.fill
    case pin_circle_fill = "􀒵pin.circle.fill"
    /// 􀒴 pin.circle
    case pin_circle = "􀒴pin.circle"
    /// 􀎧 pin.fill
    case pin_fill = "􀎧pin.fill"
    /// 􀎦 pin
    case pin = "􀎦pin"
    /// 􀙥 wifi.exclamationmark
    case wifi_exclamationmark = "􀙥wifi.exclamationmark"
    /// 􀙈 wifi.slash
    case wifi_slash = "􀙈wifi.slash"
    /// 􀙇 wifi
    case wifi = "􀙇wifi"
    /// 􀟖 key.fill
    case key_fill = "􀟖key.fill"
    /// 􀟕 key
    case key = "􀟕key"
    /// 􀑚 lock.rotation.open
    case lock_rotation_open = "􀑚lock.rotation.open"
    /// 􀑙 lock.rotation
    case lock_rotation = "􀑙lock.rotation"
    /// 􀎥 lock.open.fill
    case lock_open_fill = "􀎥lock.open.fill"
    /// 􀎤 lock.open
    case lock_open = "􀎤lock.open"
    /// 􀎣 lock.slash.fill
    case lock_slash_fill = "􀎣lock.slash.fill"
    /// 􀎢 lock.slash
    case lock_slash = "􀎢lock.slash"
    /// 􀞚 lock.shield.fill
    case lock_shield_fill = "􀞚lock.shield.fill"
    /// 􀞙 lock.shield
    case lock_shield = "􀞙lock.shield"
    /// 􀢴 lock.rectangle.on.rectangle.fill
    case lock_rectangle_on_rectangle_fill = "􀢴lock.rectangle.on.rectangle.fill"
    /// 􀢳 lock.rectangle.on.rectangle
    case lock_rectangle_on_rectangle = "􀢳lock.rectangle.on.rectangle"
    /// 􀢲 lock.rectangle.stack.fill
    case lock_rectangle_stack_fill = "􀢲lock.rectangle.stack.fill"
    /// 􀢱 lock.rectangle.stack
    case lock_rectangle_stack = "􀢱lock.rectangle.stack"
    /// 􀢉 lock.rectangle.fill
    case lock_rectangle_fill = "􀢉lock.rectangle.fill"
    /// 􀢈 lock.rectangle
    case lock_rectangle = "􀢈lock.rectangle"
    /// 􀡝 lock.square.stack.fill
    case lock_square_stack_fill = "􀡝lock.square.stack.fill"
    /// 􀡜 lock.square.stack
    case lock_square_stack = "􀡜lock.square.stack"
    /// 􀢶 lock.square.fill
    case lock_square_fill = "􀢶lock.square.fill"
    /// 􀢵 lock.square
    case lock_square = "􀢵lock.square"
    /// 􀒳 lock.circle.fill
    case lock_circle_fill = "􀒳lock.circle.fill"
    /// 􀒲 lock.circle
    case lock_circle = "􀒲lock.circle"
    /// 􀎡 lock.fill
    case lock_fill = "􀎡lock.fill"
    /// 􀎠 lock
    case lock = "􀎠lock"
    /// 􀝕 building.2.crop.circle.fill
    case building_2_crop_circle_fill = "􀝕building.2.crop.circle.fill"
    /// 􀝔 building.2.crop.circle
    case building_2_crop_circle = "􀝔building.2.crop.circle"
    /// 􀝓 building.2.fill
    case building_2_fill = "􀝓building.2.fill"
    /// 􀝒 building.2
    case building_2 = "􀝒building.2"
    /// 􀮆 building.fill
    case building_fill = "􀮆building.fill"
    /// 􀮅 building
    case building = "􀮅building"
    /// 􀟼 square.split.bottomrightquarter.fill
    case square_split_bottomrightquarter_fill = "􀟼square.split.bottomrightquarter.fill"
    /// 􀟻 square.split.bottomrightquarter
    case square_split_bottomrightquarter = "􀟻square.split.bottomrightquarter"
    /// 􀤩 building.columns.fill
    case building_columns_fill = "􀤩building.columns.fill"
    /// 􀤨 building.columns
    case building_columns = "􀤨building.columns"
    /// 􀒽 music.note.house.fill
    case music_note_house_fill = "􀒽music.note.house.fill"
    /// 􀒼 music.note.house
    case music_note_house = "􀒼music.note.house"
    /// 􀥇 house.circle.fill
    case house_circle_fill = "􀥇house.circle.fill"
    /// 􀥆 house.circle
    case house_circle = "􀥆house.circle"
    /// 􀎟 house.fill
    case house_fill = "􀎟house.fill"
    /// 􀎞 house
    case house = "􀎞house"
    /// 􀠀 homekit
    case homekit = "􀠀homekit"
    /// 􀤛 puzzlepiece.fill
    case puzzlepiece_fill = "􀤛puzzlepiece.fill"
    /// 􀤚 puzzlepiece
    case puzzlepiece = "􀤚puzzlepiece"
    /// 􀯚 cross.case.fill
    case cross_case_fill = "􀯚cross.case.fill"
    /// 􀯙 cross.case
    case cross_case = "􀯙cross.case"
    /// 􀢠 latch.2.case.fill
    case latch_2_case_fill = "􀢠latch.2.case.fill"
    /// 􀢟 latch.2.case
    case latch_2_case = "􀢟latch.2.case"
    /// 􀯢 case.fill
    case case_fill = "􀯢case.fill"
    /// 􀯡 case
    case `case` = "􀯡case"
    /// 􀎝 briefcase.fill
    case briefcase_fill = "􀎝briefcase.fill"
    /// 􀎜 briefcase
    case briefcase = "􀎜briefcase"
    /// 􀪌 faxmachine
    case faxmachine = "􀪌faxmachine"
    /// 􀪋 scanner.fill
    case scanner_fill = "􀪋scanner.fill"
    /// 􀪊 scanner
    case scanner = "􀪊scanner"
    /// 􀪿 printer.dotmatrix.fill.and.paper.fill
    case printer_dotmatrix_fill_and_paper_fill = "􀪿printer.dotmatrix.fill.and.paper.fill"
    /// 􀪟 printer.dotmatrix.fill
    case printer_dotmatrix_fill = "􀪟printer.dotmatrix.fill"
    /// 􀪞 printer.dotmatrix
    case printer_dotmatrix = "􀪞printer.dotmatrix"
    /// 􀪾 printer.fill.and.paper.fill
    case printer_fill_and_paper_fill = "􀪾printer.fill.and.paper.fill"
    /// 􀎛 printer.fill
    case printer_fill = "􀎛printer.fill"
    /// 􀎚 printer
    case printer = "􀎚printer"
    /// 􀝾 stethoscope
    case stethoscope = "􀝾stethoscope"
    /// 􀤐 scroll.fill
    case scroll_fill = "􀤐scroll.fill"
    /// 􀤏 scroll
    case scroll = "􀤏scroll"
    /// 􀤮 applescript.fill
    case applescript_fill = "􀤮applescript.fill"
    /// 􀤭 applescript
    case applescript = "􀤭applescript"
    /// 􀤋 wrench.and.screwdriver.fill
    case wrench_and_screwdriver_fill = "􀤋wrench.and.screwdriver.fill"
    /// 􀤊 wrench.and.screwdriver
    case wrench_and_screwdriver = "􀤊wrench.and.screwdriver"
    /// 􀎙 eyedropper.full
    case eyedropper_full = "􀎙eyedropper.full"
    /// 􀎘 eyedropper.halffull
    case eyedropper_halffull = "􀎘eyedropper.halffull"
    /// 􀎗 eyedropper
    case eyedropper = "􀎗eyedropper"
    /// 􀙅 hammer.fill
    case hammer_fill = "􀙅hammer.fill"
    /// 􀙄 hammer
    case hammer = "􀙄hammer"
    /// 􀎖 wrench.fill
    case wrench_fill = "􀎖wrench.fill"
    /// 􀎕 wrench
    case wrench = "􀎕wrench"
    /// 􀟃 level.fill
    case level_fill = "􀟃level.fill"
    /// 􀟂 level
    case level = "􀟂level"
    /// 􀟁 ruler.fill
    case ruler_fill = "􀟁ruler.fill"
    /// 􀟀 ruler
    case ruler = "􀟀ruler"
    /// 􀎔 bandage.fill
    case bandage_fill = "􀎔bandage.fill"
    /// 􀎓 bandage
    case bandage = "􀎓bandage"
    /// 􀣷 paintbrush.pointed.fill
    case paintbrush_pointed_fill = "􀣷paintbrush.pointed.fill"
    /// 􀣶 paintbrush.pointed
    case paintbrush_pointed = "􀣶paintbrush.pointed"
    /// 􀎒 paintbrush.fill
    case paintbrush_fill = "􀎒paintbrush.fill"
    /// 􀎑 paintbrush
    case paintbrush = "􀎑paintbrush"
    /// 􀎐 tuningfork
    case tuningfork = "􀎐tuningfork"
    /// 􀟽 pianokeys.inverse
    case pianokeys_inverse = "􀟽pianokeys.inverse"
    /// 􀎏 pianokeys
    case pianokeys = "􀎏pianokeys"
    /// 􀫐 square.grid.3x3.fill.square
    case square_grid_3x3_fill_square = "􀫐square.grid.3x3.fill.square"
    /// 􀧮 die.face.6.fill
    case die_face_6_fill = "􀧮die.face.6.fill"
    /// 􀧭 die.face.6
    case die_face_6 = "􀧭die.face.6"
    /// 􀧬 die.face.5.fill
    case die_face_5_fill = "􀧬die.face.5.fill"
    /// 􀧫 die.face.5
    case die_face_5 = "􀧫die.face.5"
    /// 􀧪 die.face.4.fill
    case die_face_4_fill = "􀧪die.face.4.fill"
    /// 􀧩 die.face.4
    case die_face_4 = "􀧩die.face.4"
    /// 􀧨 die.face.3.fill
    case die_face_3_fill = "􀧨die.face.3.fill"
    /// 􀧧 die.face.3
    case die_face_3 = "􀧧die.face.3"
    /// 􀧦 die.face.2.fill
    case die_face_2_fill = "􀧦die.face.2.fill"
    /// 􀧥 die.face.2
    case die_face_2 = "􀧥die.face.2"
    /// 􀧤 die.face.1.fill
    case die_face_1_fill = "􀧤die.face.1.fill"
    /// 􀧣 die.face.1
    case die_face_1 = "􀧣die.face.1"
    /// 􀧰 amplifier
    case amplifier = "􀧰amplifier"
    /// 􀠕 metronome.fill
    case metronome_fill = "􀠕metronome.fill"
    /// 􀎌 metronome
    case metronome = "􀎌metronome"
    /// 􀬧 barometer
    case barometer = "􀬧barometer"
    /// 􀍾 speedometer
    case speedometer = "􀍾speedometer"
    /// 􀓧 gauge.badge.minus
    case gauge_badge_minus = "􀓧gauge.badge.minus"
    /// 􀓓 gauge.badge.plus
    case gauge_badge_plus = "􀓓gauge.badge.plus"
    /// 􀍽 gauge
    case gauge = "􀍽gauge"
    /// 􀍼 nosign
    case nosign = "􀍼nosign"
    /// 􀬗 gyroscope
    case gyroscope = "􀬗gyroscope"
    /// 􀪑 dial.max.fill
    case dial_max_fill = "􀪑dial.max.fill"
    /// 􀪐 dial.max
    case dial_max = "􀪐dial.max"
    /// 􀍻 dial.min.fill
    case dial_min_fill = "􀍻dial.min.fill"
    /// 􀍺 dial.min
    case dial_min = "􀍺dial.min"
    /// 􀍴 crop.rotate
    case crop_rotate = "􀍴crop.rotate"
    /// 􀍳 crop
    case crop = "􀍳crop"
    /// 􀜎 wand.and.stars.inverse
    case wand_and_stars_inverse = "􀜎wand.and.stars.inverse"
    /// 􀜍 wand.and.stars
    case wand_and_stars = "􀜍wand.and.stars"
    /// 􀍲 wand.and.rays.inverse
    case wand_and_rays_inverse = "􀍲wand.and.rays.inverse"
    /// 􀍱 wand.and.rays
    case wand_and_rays = "􀍱wand.and.rays"
    /// 􀟿 wallet.pass.fill
    case wallet_pass_fill = "􀟿wallet.pass.fill"
    /// 􀟾 wallet.pass
    case wallet_pass = "􀟾wallet.pass"
    /// 􀦡 giftcard.fill
    case giftcard_fill = "􀦡giftcard.fill"
    /// 􀦠 giftcard
    case giftcard = "􀦠giftcard"
    /// 􀒰 creditcard.circle.fill
    case creditcard_circle_fill = "􀒰creditcard.circle.fill"
    /// 􀒯 creditcard.circle
    case creditcard_circle = "􀒯creditcard.circle"
    /// 􀍰 creditcard.fill
    case creditcard_fill = "􀍰creditcard.fill"
    /// 􀍯 creditcard
    case creditcard = "􀍯creditcard"
    /// 􀍮 cart.fill.badge.minus
    case cart_fill_badge_minus = "􀍮cart.fill.badge.minus"
    /// 􀍭 cart.badge.minus
    case cart_badge_minus = "􀍭cart.badge.minus"
    /// 􀍬 cart.fill.badge.plus
    case cart_fill_badge_plus = "􀍬cart.fill.badge.plus"
    /// 􀍫 cart.badge.plus
    case cart_badge_plus = "􀍫cart.badge.plus"
    /// 􀒮 cart.circle.fill
    case cart_circle_fill = "􀒮cart.circle.fill"
    /// 􀒭 cart.circle
    case cart_circle = "􀒭cart.circle"
    /// 􀍪 cart.fill
    case cart_fill = "􀍪cart.fill"
    /// 􀍩 cart
    case cart = "􀍩cart"
    /// 􀍨 bag.fill.badge.minus
    case bag_fill_badge_minus = "􀍨bag.fill.badge.minus"
    /// 􀍧 bag.badge.minus
    case bag_badge_minus = "􀍧bag.badge.minus"
    /// 􀍦 bag.fill.badge.plus
    case bag_fill_badge_plus = "􀍦bag.fill.badge.plus"
    /// 􀍥 bag.badge.plus
    case bag_badge_plus = "􀍥bag.badge.plus"
    /// 􀒬 bag.circle.fill
    case bag_circle_fill = "􀒬bag.circle.fill"
    /// 􀒫 bag.circle
    case bag_circle = "􀒫bag.circle"
    /// 􀍤 bag.fill
    case bag_fill = "􀍤bag.fill"
    /// 􀍣 bag
    case bag = "􀍣bag"
    /// 􀠪 ellipsis.rectangle.fill
    case ellipsis_rectangle_fill = "􀠪ellipsis.rectangle.fill"
    /// 􀠩 ellipsis.rectangle
    case ellipsis_rectangle = "􀠩ellipsis.rectangle"
    /// 􀍢 ellipsis.circle.fill
    case ellipsis_circle_fill = "􀍢ellipsis.circle.fill"
    /// 􀍡 ellipsis.circle
    case ellipsis_circle = "􀍡ellipsis.circle"
    /// 􀍠 ellipsis
    case ellipsis = "􀍠ellipsis"
    /// 􀞷 scissors.badge.ellipsis
    case scissors_badge_ellipsis = "􀞷scissors.badge.ellipsis"
    /// 􀉈 scissors
    case scissors = "􀉈scissors"
    /// 􀫏 line.3.crossed.swirl.circle.fill
    case line_3_crossed_swirl_circle_fill = "􀫏line.3.crossed.swirl.circle.fill"
    /// 􀫎 line.3.crossed.swirl.circle
    case line_3_crossed_swirl_circle = "􀫎line.3.crossed.swirl.circle"
    /// 􀙤 signature
    case signature = "􀙤signature"
    /// 􀥏 gearshape.2.fill
    case gearshape_2_fill = "􀥏gearshape.2.fill"
    /// 􀥎 gearshape.2
    case gearshape_2 = "􀥎gearshape.2"
    /// 􀣌 gearshape.fill
    case gearshape_fill = "􀣌gearshape.fill"
    /// 􀣋 gearshape
    case gearshape = "􀣋gearshape"
    /// 􀍟 gear
    case gear = "􀍟gear"
    /// 􀣀 arrow.up.right.and.arrow.down.left.rectangle.fill
    case arrow_up_right_and_arrow_down_left_rectangle_fill = "􀣀arrow.up.right.and.arrow.down.left.rectangle.fill"
    /// 􀢿 arrow.up.right.and.arrow.down.left.rectangle
    case arrow_up_right_and_arrow_down_left_rectangle = "􀢿arrow.up.right.and.arrow.down.left.rectangle"
    /// 􀬸 rectangle.and.text.magnifyingglass
    case rectangle_and_text_magnifyingglass = "􀬸rectangle.and.text.magnifyingglass"
    /// 􀢾 mail.and.text.magnifyingglass
    case mail_and_text_magnifyingglass = "􀢾mail.and.text.magnifyingglass"
    /// 􀣫 mail.fill
    case mail_fill = "􀣫mail.fill"
    /// 􀣪 mail
    case mail = "􀣪mail"
    /// 􀍞 mail.stack.fill
    case mail_stack_fill = "􀍞mail.stack.fill"
    /// 􀍝 mail.stack
    case mail_stack = "􀍝mail.stack"
    /// 􀫚 envelope.fill.badge.shield.trailinghalf.fill
    case envelope_fill_badge_shield_trailinghalf_fill = "􀫚envelope.fill.badge.shield.trailinghalf.fill"
    /// 􀫙 envelope.badge.shield.leadinghalf.fill
    case envelope_badge_shield_leadinghalf_fill = "􀫙envelope.badge.shield.leadinghalf.fill"
    /// 􀍜 envelope.badge.fill
    case envelope_badge_fill = "􀍜envelope.badge.fill"
    /// 􀍛 envelope.badge
    case envelope_badge = "􀍛envelope.badge"
    /// 􀍚 envelope.open.fill
    case envelope_open_fill = "􀍚envelope.open.fill"
    /// 􀍙 envelope.open
    case envelope_open = "􀍙envelope.open"
    /// 􀦘 envelope.arrow.triangle.branch.fill
    case envelope_arrow_triangle_branch_fill = "􀦘envelope.arrow.triangle.branch.fill"
    /// 􀦗 envelope.arrow.triangle.branch
    case envelope_arrow_triangle_branch = "􀦗envelope.arrow.triangle.branch"
    /// 􀍘 envelope.circle.fill
    case envelope_circle_fill = "􀍘envelope.circle.fill"
    /// 􀍗 envelope.circle
    case envelope_circle = "􀍗envelope.circle"
    /// 􀍖 envelope.fill
    case envelope_fill = "􀍖envelope.fill"
    /// 􀍕 envelope
    case envelope = "􀍕envelope"
    /// 􀍔 questionmark.video.fill
    case questionmark_video_fill = "􀍔questionmark.video.fill"
    /// 􀍓 questionmark.video
    case questionmark_video = "􀍓questionmark.video"
    /// 􀍒 arrow.down.left.video.fill
    case arrow_down_left_video_fill = "􀍒arrow.down.left.video.fill"
    /// 􀍑 arrow.down.left.video
    case arrow_down_left_video = "􀍑arrow.down.left.video"
    /// 􀍐 arrow.up.right.video.fill
    case arrow_up_right_video_fill = "􀍐arrow.up.right.video.fill"
    /// 􀍏 arrow.up.right.video
    case arrow_up_right_video = "􀍏arrow.up.right.video"
    /// 􀮻 video.fill.badge.checkmark
    case video_fill_badge_checkmark = "􀮻video.fill.badge.checkmark"
    /// 􀮺 video.badge.checkmark
    case video_badge_checkmark = "􀮺video.badge.checkmark"
    /// 􀜯 video.fill.badge.plus
    case video_fill_badge_plus = "􀜯video.fill.badge.plus"
    /// 􀜮 video.badge.plus
    case video_badge_plus = "􀜮video.badge.plus"
    /// 􀍎 video.slash.fill
    case video_slash_fill = "􀍎video.slash.fill"
    /// 􀍍 video.slash
    case video_slash = "􀍍video.slash"
    /// 􀍌 video.circle.fill
    case video_circle_fill = "􀍌video.circle.fill"
    /// 􀍋 video.circle
    case video_circle = "􀍋video.circle"
    /// 􀍊 video.fill
    case video_fill = "􀍊video.fill"
    /// 􀍉 video
    case video = "􀍉video"
    /// 􀙰 teletype.answer
    case teletype_answer = "􀙰teletype.answer"
    /// 􀜆 teletype.circle.fill
    case teletype_circle_fill = "􀜆teletype.circle.fill"
    /// 􀜅 teletype.circle
    case teletype_circle = "􀜅teletype.circle"
    /// 􀍈 teletype
    case teletype = "􀍈teletype"
    /// 􀒨 phone.down.circle.fill
    case phone_down_circle_fill = "􀒨phone.down.circle.fill"
    /// 􀒧 phone.down.circle
    case phone_down_circle = "􀒧phone.down.circle"
    /// 􀍇 phone.down.fill
    case phone_down_fill = "􀍇phone.down.fill"
    /// 􀍆 phone.down
    case phone_down = "􀍆phone.down"
    /// 􀍅 phone.fill.arrow.right
    case phone_fill_arrow_right = "􀍅phone.fill.arrow.right"
    /// 􀍄 phone.arrow.right
    case phone_arrow_right = "􀍄phone.arrow.right"
    /// 􀍃 phone.fill.arrow.down.left
    case phone_fill_arrow_down_left = "􀍃phone.fill.arrow.down.left"
    /// 􀍂 phone.arrow.down.left
    case phone_arrow_down_left = "􀍂phone.arrow.down.left"
    /// 􀍁 phone.fill.arrow.up.right
    case phone_fill_arrow_up_right = "􀍁phone.fill.arrow.up.right"
    /// 􀍀 phone.arrow.up.right
    case phone_arrow_up_right = "􀍀phone.arrow.up.right"
    /// 􀬜 phone.fill.connection
    case phone_fill_connection = "􀬜phone.fill.connection"
    /// 􀬛 phone.connection
    case phone_connection = "􀬛phone.connection"
    /// 􀖏 phone.fill.badge.plus
    case phone_fill_badge_plus = "􀖏phone.fill.badge.plus"
    /// 􀖎 phone.badge.plus
    case phone_badge_plus = "􀖎phone.badge.plus"
    /// 􀒦 phone.circle.fill
    case phone_circle_fill = "􀒦phone.circle.fill"
    /// 􀒥 phone.circle
    case phone_circle = "􀒥phone.circle"
    /// 􀌿 phone.fill
    case phone_fill = "􀌿phone.fill"
    /// 􀌾 phone
    case phone = "􀌾phone"
    /// 􀘲 bubble.left.and.bubble.right.fill
    case bubble_left_and_bubble_right_fill = "􀘲bubble.left.and.bubble.right.fill"
    /// 􀒤 bubble.left.and.bubble.right
    case bubble_left_and_bubble_right = "􀒤bubble.left.and.bubble.right"
    /// 􀌽 bubble.middle.top.fill
    case bubble_middle_top_fill = "􀌽bubble.middle.top.fill"
    /// 􀌼 bubble.middle.top
    case bubble_middle_top = "􀌼bubble.middle.top"
    /// 􀌹 bubble.middle.bottom.fill
    case bubble_middle_bottom_fill = "􀌹bubble.middle.bottom.fill"
    /// 􀌸 bubble.middle.bottom
    case bubble_middle_bottom = "􀌸bubble.middle.bottom"
    /// 􀱱 video.bubble.left.fill
    case video_bubble_left_fill = "􀱱video.bubble.left.fill"
    /// 􀱰 video.bubble.left
    case video_bubble_left = "􀱰video.bubble.left"
    /// 􀱯 phone.bubble.left.fill
    case phone_bubble_left_fill = "􀱯phone.bubble.left.fill"
    /// 􀱮 phone.bubble.left
    case phone_bubble_left = "􀱮phone.bubble.left"
    /// 􀕻 ellipsis.bubble.fill
    case ellipsis_bubble_fill = "􀕻ellipsis.bubble.fill"
    /// 􀕺 ellipsis.bubble
    case ellipsis_bubble = "􀕺ellipsis.bubble"
    /// 􀬅 rectangle.3.offgrid.bubble.left.fill
    case rectangle_3_offgrid_bubble_left_fill = "􀬅rectangle.3.offgrid.bubble.left.fill"
    /// 􀬄 rectangle.3.offgrid.bubble.left
    case rectangle_3_offgrid_bubble_left = "􀬄rectangle.3.offgrid.bubble.left"
    /// 􀌷 plus.bubble.fill
    case plus_bubble_fill = "􀌷plus.bubble.fill"
    /// 􀌶 plus.bubble
    case plus_bubble = "􀌶plus.bubble"
    /// 􀌵 captions.bubble.fill
    case captions_bubble_fill = "􀌵captions.bubble.fill"
    /// 􀌴 captions.bubble
    case captions_bubble = "􀌴captions.bubble"
    /// 􀌳 text.bubble.fill
    case text_bubble_fill = "􀌳text.bubble.fill"
    /// 􀌲 text.bubble
    case text_bubble = "􀌲text.bubble"
    /// 􀌱 t.bubble.fill
    case t_bubble_fill = "􀌱t.bubble.fill"
    /// 􀌰 t.bubble
    case t_bubble = "􀌰t.bubble"
    /// 􀌯 quote.bubble.fill
    case quote_bubble_fill = "􀌯quote.bubble.fill"
    /// 􀌮 quote.bubble
    case quote_bubble = "􀌮quote.bubble"
    /// 􀌭 exclamationmark.bubble.fill
    case exclamationmark_bubble_fill = "􀌭exclamationmark.bubble.fill"
    /// 􀌬 exclamationmark.bubble
    case exclamationmark_bubble = "􀌬exclamationmark.bubble"
    /// 􀌫 bubble.left.fill
    case bubble_left_fill = "􀌫bubble.left.fill"
    /// 􀌪 bubble.left
    case bubble_left = "􀌪bubble.left"
    /// 􀌩 bubble.right.fill
    case bubble_right_fill = "􀌩bubble.right.fill"
    /// 􀌨 bubble.right
    case bubble_right = "􀌨bubble.right"
    /// 􀡚 plus.message.fill
    case plus_message_fill = "􀡚plus.message.fill"
    /// 􀡙 plus.message
    case plus_message = "􀡙plus.message"
    /// 􀜄 arrow.up.message.fill
    case arrow_up_message_fill = "􀜄arrow.up.message.fill"
    /// 􀜃 arrow.up.message
    case arrow_up_message = "􀜃arrow.up.message"
    /// 􀌧 message.circle.fill
    case message_circle_fill = "􀌧message.circle.fill"
    /// 􀌦 message.circle
    case message_circle = "􀌦message.circle"
    /// 􀌥 message.fill
    case message_fill = "􀌥message.fill"
    /// 􀌤 message
    case message = "􀌤message"
    /// 􀝂 camera.on.rectangle.fill
    case camera_on_rectangle_fill = "􀝂camera.on.rectangle.fill"
    /// 􀝁 camera.on.rectangle
    case camera_on_rectangle = "􀝁camera.on.rectangle"
    /// 􀌣 arrow.triangle.2.circlepath.camera.fill
    case arrow_triangle_2_circlepath_camera_fill = "􀌣arrow.triangle.2.circlepath.camera.fill"
    /// 􀌢 arrow.triangle.2.circlepath.camera
    case arrow_triangle_2_circlepath_camera = "􀌢arrow.triangle.2.circlepath.camera"
    /// 􀢘 camera.fill.badge.ellipsis
    case camera_fill_badge_ellipsis = "􀢘camera.fill.badge.ellipsis"
    /// 􀢗 camera.badge.ellipsis
    case camera_badge_ellipsis = "􀢗camera.badge.ellipsis"
    /// 􀌡 camera.circle.fill
    case camera_circle_fill = "􀌡camera.circle.fill"
    /// 􀌠 camera.circle
    case camera_circle = "􀌠camera.circle"
    /// 􀌟 camera.fill
    case camera_fill = "􀌟camera.fill"
    /// 􀌞 camera
    case camera = "􀌞camera"
    /// 􀞋 flashlight.on.fill
    case flashlight_on_fill = "􀞋flashlight.on.fill"
    /// 􀝌 flashlight.off.fill
    case flashlight_off_fill = "􀝌flashlight.off.fill"
    /// 􀌘 icloud.and.arrow.up.fill
    case icloud_and_arrow_up_fill = "􀌘icloud.and.arrow.up.fill"
    /// 􀌗 icloud.and.arrow.up
    case icloud_and_arrow_up = "􀌗icloud.and.arrow.up"
    /// 􀌖 icloud.and.arrow.down.fill
    case icloud_and_arrow_down_fill = "􀌖icloud.and.arrow.down.fill"
    /// 􀌕 icloud.and.arrow.down
    case icloud_and_arrow_down = "􀌕icloud.and.arrow.down"
    /// 􀙺 arrow.counterclockwise.icloud.fill
    case arrow_counterclockwise_icloud_fill = "􀙺arrow.counterclockwise.icloud.fill"
    /// 􀙹 arrow.counterclockwise.icloud
    case arrow_counterclockwise_icloud = "􀙹arrow.counterclockwise.icloud"
    /// 􀙸 arrow.clockwise.icloud.fill
    case arrow_clockwise_icloud_fill = "􀙸arrow.clockwise.icloud.fill"
    /// 􀙷 arrow.clockwise.icloud
    case arrow_clockwise_icloud = "􀙷arrow.clockwise.icloud"
    /// 􀢖 key.icloud.fill
    case key_icloud_fill = "􀢖key.icloud.fill"
    /// 􀢕 key.icloud
    case key_icloud = "􀢕key.icloud"
    /// 􀙶 lock.icloud.fill
    case lock_icloud_fill = "􀙶lock.icloud.fill"
    /// 􀙵 lock.icloud
    case lock_icloud = "􀙵lock.icloud"
    /// 􀙴 person.icloud.fill
    case person_icloud_fill = "􀙴person.icloud.fill"
    /// 􀙳 person.icloud
    case person_icloud = "􀙳person.icloud"
    /// 􀙀 bolt.horizontal.icloud.fill
    case bolt_horizontal_icloud_fill = "􀙀bolt.horizontal.icloud.fill"
    /// 􀘿 bolt.horizontal.icloud
    case bolt_horizontal_icloud = "􀘿bolt.horizontal.icloud"
    /// 􀒟 link.icloud.fill
    case link_icloud_fill = "􀒟link.icloud.fill"
    /// 􀒞 link.icloud
    case link_icloud = "􀒞link.icloud"
    /// 􀌔 xmark.icloud.fill
    case xmark_icloud_fill = "􀌔xmark.icloud.fill"
    /// 􀌓 xmark.icloud
    case xmark_icloud = "􀌓xmark.icloud"
    /// 􀢔 checkmark.icloud.fill
    case checkmark_icloud_fill = "􀢔checkmark.icloud.fill"
    /// 􀢓 checkmark.icloud
    case checkmark_icloud = "􀢓checkmark.icloud"
    /// 􀌒 exclamationmark.icloud.fill
    case exclamationmark_icloud_fill = "􀌒exclamationmark.icloud.fill"
    /// 􀌑 exclamationmark.icloud
    case exclamationmark_icloud = "􀌑exclamationmark.icloud"
    /// 􀌐 icloud.slash.fill
    case icloud_slash_fill = "􀌐icloud.slash.fill"
    /// 􀌏 icloud.slash
    case icloud_slash = "􀌏icloud.slash"
    /// 􀌎 icloud.circle.fill
    case icloud_circle_fill = "􀌎icloud.circle.fill"
    /// 􀌍 icloud.circle
    case icloud_circle = "􀌍icloud.circle"
    /// 􀌌 icloud.fill
    case icloud_fill = "􀌌icloud.fill"
    /// 􀌋 icloud
    case icloud = "􀌋icloud"
    /// 􀦪 mouth.fill
    case mouth_fill = "􀦪mouth.fill"
    /// 􀦩 mouth
    case mouth = "􀦩mouth"
    /// 􀦀 mustache.fill
    case mustache_fill = "􀦀mustache.fill"
    /// 􀥿 mustache
    case mustache = "􀥿mustache"
    /// 􀨰 nose.fill
    case nose_fill = "􀨰nose.fill"
    /// 􀨯 nose
    case nose = "􀨯nose"
    /// 􀦭 eyebrow
    case eyebrow = "􀦭eyebrow"
    /// 􀨭 eyes.inverse
    case eyes_inverse = "􀨭eyes.inverse"
    /// 􀦧 eyes
    case eyes = "􀦧eyes"
    /// 􀋰 eye.slash.fill
    case eye_slash_fill = "􀋰eye.slash.fill"
    /// 􀋯 eye.slash
    case eye_slash = "􀋯eye.slash"
    /// 􀜀 eye.circle.fill
    case eye_circle_fill = "􀜀eye.circle.fill"
    /// 􀛿 eye.circle
    case eye_circle = "􀛿eye.circle"
    /// 􀋮 eye.fill
    case eye_fill = "􀋮eye.fill"
    /// 􀋭 eye
    case eye = "􀋭eye"
    /// 􀒚 bolt.horizontal.circle.fill
    case bolt_horizontal_circle_fill = "􀒚bolt.horizontal.circle.fill"
    /// 􀒙 bolt.horizontal.circle
    case bolt_horizontal_circle = "􀒙bolt.horizontal.circle"
    /// 􀒘 bolt.horizontal.fill
    case bolt_horizontal_fill = "􀒘bolt.horizontal.fill"
    /// 􀒗 bolt.horizontal
    case bolt_horizontal = "􀒗bolt.horizontal"
    /// 􀘴 bolt.badge.a.fill
    case bolt_badge_a_fill = "􀘴bolt.badge.a.fill"
    /// 􀘳 bolt.badge.a
    case bolt_badge_a = "􀘳bolt.badge.a"
    /// 􀋬 bolt.slash.circle.fill
    case bolt_slash_circle_fill = "􀋬bolt.slash.circle.fill"
    /// 􀋫 bolt.slash.circle
    case bolt_slash_circle = "􀋫bolt.slash.circle"
    /// 􀋪 bolt.slash.fill
    case bolt_slash_fill = "􀋪bolt.slash.fill"
    /// 􀋩 bolt.slash
    case bolt_slash = "􀋩bolt.slash"
    /// 􀋨 bolt.circle.fill
    case bolt_circle_fill = "􀋨bolt.circle.fill"
    /// 􀋧 bolt.circle
    case bolt_circle = "􀋧bolt.circle"
    /// 􀋦 bolt.fill
    case bolt_fill = "􀋦bolt.fill"
    /// 􀋥 bolt
    case bolt = "􀋥bolt"
    /// 􀦬 tag.slash.fill
    case tag_slash_fill = "􀦬tag.slash.fill"
    /// 􀦫 tag.slash
    case tag_slash = "􀦫tag.slash"
    /// 􀋤 tag.circle.fill
    case tag_circle_fill = "􀋤tag.circle.fill"
    /// 􀋣 tag.circle
    case tag_circle = "􀋣tag.circle"
    /// 􀋢 tag.fill
    case tag_fill = "􀋢tag.fill"
    /// 􀋡 tag
    case tag = "􀋡tag"
    /// 􀝗 bell.badge.fill
    case bell_badge_fill = "􀝗bell.badge.fill"
    /// 􀝖 bell.badge
    case bell_badge = "􀝖bell.badge"
    /// 􀋠 bell.slash.circle.fill
    case bell_slash_circle_fill = "􀋠bell.slash.circle.fill"
    /// 􀋟 bell.slash.circle
    case bell_slash_circle = "􀋟bell.slash.circle"
    /// 􀋞 bell.slash.fill
    case bell_slash_fill = "􀋞bell.slash.fill"
    /// 􀋝 bell.slash
    case bell_slash = "􀋝bell.slash"
    /// 􀋜 bell.circle.fill
    case bell_circle_fill = "􀋜bell.circle.fill"
    /// 􀋛 bell.circle
    case bell_circle = "􀋛bell.circle"
    /// 􀋚 bell.fill
    case bell_fill = "􀋚bell.fill"
    /// 􀋙 bell
    case bell = "􀋙bell"
    /// 􀋘 location.north.line.fill
    case location_north_line_fill = "􀋘location.north.line.fill"
    /// 􀋗 location.north.line
    case location_north_line = "􀋗location.north.line"
    /// 􀋖 location.circle.fill
    case location_circle_fill = "􀋖location.circle.fill"
    /// 􀋕 location.circle
    case location_circle = "􀋕location.circle"
    /// 􀋔 location.north.fill
    case location_north_fill = "􀋔location.north.fill"
    /// 􀋓 location.north
    case location_north = "􀋓location.north"
    /// 􀘭 location.slash.fill
    case location_slash_fill = "􀘭location.slash.fill"
    /// 􀘬 location.slash
    case location_slash = "􀘬location.slash"
    /// 􀋒 location.fill
    case location_fill = "􀋒location.fill"
    /// 􀋑 location
    case location = "􀋑location"
    /// 􀤕 flag.badge.ellipsis.fill
    case flag_badge_ellipsis_fill = "􀤕flag.badge.ellipsis.fill"
    /// 􀤔 flag.badge.ellipsis
    case flag_badge_ellipsis = "􀤔flag.badge.ellipsis"
    /// 􀋐 flag.slash.circle.fill
    case flag_slash_circle_fill = "􀋐flag.slash.circle.fill"
    /// 􀋏 flag.slash.circle
    case flag_slash_circle = "􀋏flag.slash.circle"
    /// 􀋎 flag.slash.fill
    case flag_slash_fill = "􀋎flag.slash.fill"
    /// 􀋍 flag.slash
    case flag_slash = "􀋍flag.slash"
    /// 􀋌 flag.circle.fill
    case flag_circle_fill = "􀋌flag.circle.fill"
    /// 􀋋 flag.circle
    case flag_circle = "􀋋flag.circle"
    /// 􀋊 flag.fill
    case flag_fill = "􀋊flag.fill"
    /// 􀋉 flag
    case flag = "􀋉flag"
    /// 􀑮 line.horizontal.star.fill.line.horizontal
    case line_horizontal_star_fill_line_horizontal = "􀑮line.horizontal.star.fill.line.horizontal"
    /// 􀋈 star.slash.fill
    case star_slash_fill = "􀋈star.slash.fill"
    /// 􀋇 star.slash
    case star_slash = "􀋇star.slash"
    /// 􀠨 star.square.fill
    case star_square_fill = "􀠨star.square.fill"
    /// 􀠧 star.square
    case star_square = "􀠧star.square"
    /// 􀋆 star.circle.fill
    case star_circle_fill = "􀋆star.circle.fill"
    /// 􀋅 star.circle
    case star_circle = "􀋅star.circle"
    /// 􀋄 star.leadinghalf.fill
    case star_leadinghalf_fill = "􀋄star.leadinghalf.fill"
    /// 􀋃 star.fill
    case star_fill = "􀋃star.fill"
    /// 􀋂 star
    case star = "􀋂star"
    /// 􀋁 rhombus.fill
    case rhombus_fill = "􀋁rhombus.fill"
    /// 􀋀 rhombus
    case rhombus = "􀋀rhombus"
    /// 􀧢 arrow.clockwise.heart.fill
    case arrow_clockwise_heart_fill = "􀧢arrow.clockwise.heart.fill"
    /// 􀧡 arrow.clockwise.heart
    case arrow_clockwise_heart = "􀧡arrow.clockwise.heart"
    /// 􀲘 arrow.down.heart.fill
    case arrow_down_heart_fill = "􀲘arrow.down.heart.fill"
    /// 􀲗 arrow.down.heart
    case arrow_down_heart = "􀲗arrow.down.heart"
    /// 􀲖 arrow.up.heart.fill
    case arrow_up_heart_fill = "􀲖arrow.up.heart.fill"
    /// 􀲕 arrow.up.heart
    case arrow_up_heart = "􀲕arrow.up.heart"
    /// 􀛥 bolt.heart.fill
    case bolt_heart_fill = "􀛥bolt.heart.fill"
    /// 􀞽 bolt.heart
    case bolt_heart = "􀞽bolt.heart"
    /// 􀥵 heart.text.square.fill
    case heart_text_square_fill = "􀥵heart.text.square.fill"
    /// 􀥴 heart.text.square
    case heart_text_square = "􀥴heart.text.square"
    /// 􀊻 heart.slash.circle.fill
    case heart_slash_circle_fill = "􀊻heart.slash.circle.fill"
    /// 􀊺 heart.slash.circle
    case heart_slash_circle = "􀊺heart.slash.circle"
    /// 􀊷 heart.slash.fill
    case heart_slash_fill = "􀊷heart.slash.fill"
    /// 􀊶 heart.slash
    case heart_slash = "􀊶heart.slash"
    /// 􀊹 heart.circle.fill
    case heart_circle_fill = "􀊹heart.circle.fill"
    /// 􀊸 heart.circle
    case heart_circle = "􀊸heart.circle"
    /// 􀊵 heart.fill
    case heart_fill = "􀊵heart.fill"
    /// 􀊴 heart
    case heart = "􀊴heart"
    /// 􀊿 suit.diamond.fill
    case suit_diamond_fill = "􀊿suit.diamond.fill"
    /// 􀒄 suit.diamond
    case suit_diamond = "􀒄suit.diamond"
    /// 􀊾 suit.spade.fill
    case suit_spade_fill = "􀊾suit.spade.fill"
    /// 􀒅 suit.spade
    case suit_spade = "􀒅suit.spade"
    /// 􀊽 suit.club.fill
    case suit_club_fill = "􀊽suit.club.fill"
    /// 􀒃 suit.club
    case suit_club = "􀒃suit.club"
    /// 􀊼 suit.heart.fill
    case suit_heart_fill = "􀊼suit.heart.fill"
    /// 􀒂 suit.heart
    case suit_heart = "􀒂suit.heart"
    /// 􀝞 hexagon.fill
    case hexagon_fill = "􀝞hexagon.fill"
    /// 􀝝 hexagon
    case hexagon = "􀝝hexagon"
    /// 􀟋 octagon.fill
    case octagon_fill = "􀟋octagon.fill"
    /// 􀟊 octagon
    case octagon = "􀟊octagon"
    /// 􀟉 diamond.fill
    case diamond_fill = "􀟉diamond.fill"
    /// 􀟈 diamond
    case diamond = "􀟈diamond"
    /// 􀚖 triangle.righthalf.fill
    case triangle_righthalf_fill = "􀚖triangle.righthalf.fill"
    /// 􀚕 triangle.lefthalf.fill
    case triangle_lefthalf_fill = "􀚕triangle.lefthalf.fill"
    /// 􀛤 triangle.fill
    case triangle_fill = "􀛤triangle.fill"
    /// 􀛣 triangle
    case triangle = "􀛣triangle"
    /// 􀟐 rectangle.portrait.fill
    case rectangle_portrait_fill = "􀟐rectangle.portrait.fill"
    /// 􀟏 rectangle.portrait
    case rectangle_portrait = "􀟏rectangle.portrait"
    /// 􀣥 rectangle.slash.fill
    case rectangle_slash_fill = "􀣥rectangle.slash.fill"
    /// 􀣤 rectangle.slash
    case rectangle_slash = "􀣤rectangle.slash"
    /// 􀏄 rectangle.fill
    case rectangle_fill = "􀏄rectangle.fill"
    /// 􀏃 rectangle
    case rectangle = "􀏃rectangle"
    /// 􀑌 app.fill
    case app_fill = "􀑌app.fill"
    /// 􀑋 app
    case app = "􀑋app"
    /// 􀪶 dot.squareshape.fill
    case dot_squareshape_fill = "􀪶dot.squareshape.fill"
    /// 􀪵 dot.squareshape
    case dot_squareshape = "􀪵dot.squareshape"
    /// 􀫴 squareshape.squareshape.dashed
    case squareshape_squareshape_dashed = "􀫴squareshape.squareshape.dashed"
    /// 􀩢 squareshape.dashed.squareshape
    case squareshape_dashed_squareshape = "􀩢squareshape.dashed.squareshape"
    /// 􀣯 squareshape.fill
    case squareshape_fill = "􀣯squareshape.fill"
    /// 􀣮 squareshape
    case squareshape = "􀣮squareshape"
    /// 􀭉 questionmark.square.dashed
    case questionmark_square_dashed = "􀭉questionmark.square.dashed"
    /// 􀧑 square.dashed.inset.fill
    case square_dashed_inset_fill = "􀧑square.dashed.inset.fill"
    /// 􀓔 square.dashed
    case square_dashed = "􀓔square.dashed"
    /// 􀧻 circle.fill.square.fill
    case circle_fill_square_fill = "􀧻circle.fill.square.fill"
    /// 􀧺 circle.square
    case circle_square = "􀧺circle.square"
    /// 􀕵 dot.square.fill
    case dot_square_fill = "􀕵dot.square.fill"
    /// 􀕴 dot.square
    case dot_square = "􀕴dot.square"
    /// 􀣧 square.slash.fill
    case square_slash_fill = "􀣧square.slash.fill"
    /// 􀣦 square.slash
    case square_slash = "􀣦square.slash"
    /// 􀪛 square.tophalf.fill
    case square_tophalf_fill = "􀪛square.tophalf.fill"
    /// 􀪚 square.bottomhalf.fill
    case square_bottomhalf_fill = "􀪚square.bottomhalf.fill"
    /// 􀚔 square.righthalf.fill
    case square_righthalf_fill = "􀚔square.righthalf.fill"
    /// 􀚓 square.lefthalf.fill
    case square_lefthalf_fill = "􀚓square.lefthalf.fill"
    /// 􀂓 square.fill
    case square_fill = "􀂓square.fill"
    /// 􀂒 square
    case square = "􀂒square"
    /// 􀮷 placeholdertext.fill
    case placeholdertext_fill = "􀮷placeholdertext.fill"
    /// 􀲡 oval.portrait.fill
    case oval_portrait_fill = "􀲡oval.portrait.fill"
    /// 􀲠 oval.portrait
    case oval_portrait = "􀲠oval.portrait"
    /// 􀲟 oval.fill
    case oval_fill = "􀲟oval.fill"
    /// 􀲞 oval
    case oval = "􀲞oval"
    /// 􀧷 capsule.portrait.fill
    case capsule_portrait_fill = "􀧷capsule.portrait.fill"
    /// 􀧶 capsule.portrait
    case capsule_portrait = "􀧶capsule.portrait"
    /// 􀝷 capsule.fill
    case capsule_fill = "􀝷capsule.fill"
    /// 􀝶 capsule
    case capsule = "􀝶capsule"
    /// 􀢊 target
    case target = "􀢊target"
    /// 􀕫 smallcircle.circle.fill
    case smallcircle_circle_fill = "􀕫smallcircle.circle.fill"
    /// 􀕪 smallcircle.circle
    case smallcircle_circle = "􀕪smallcircle.circle"
    /// 􀣽 circlebadge.2.fill
    case circlebadge_2_fill = "􀣽circlebadge.2.fill"
    /// 􀫲 circlebadge.2
    case circlebadge_2 = "􀫲circlebadge.2"
    /// 􀜞 circlebadge.fill
    case circlebadge_fill = "􀜞circlebadge.fill"
    /// 􀧙 circlebadge
    case circlebadge = "􀧙circlebadge"
    /// 􀧒 circle.dashed.inset.fill
    case circle_dashed_inset_fill = "􀧒circle.dashed.inset.fill"
    /// 􀓞 circle.dashed
    case circle_dashed = "􀓞circle.dashed"
    /// 􀕩 smallcircle.fill.circle.fill
    case smallcircle_fill_circle_fill = "􀕩smallcircle.fill.circle.fill"
    /// 􀍷 smallcircle.fill.circle
    case smallcircle_fill_circle = "􀍷smallcircle.fill.circle"
    /// 􀝜 largecircle.fill.circle
    case largecircle_fill_circle = "􀝜largecircle.fill.circle"
    /// 􀪗 circle.tophalf.fill
    case circle_tophalf_fill = "􀪗circle.tophalf.fill"
    /// 􀪖 circle.bottomhalf.fill
    case circle_bottomhalf_fill = "􀪖circle.bottomhalf.fill"
    /// 􀀃 circle.righthalf.fill
    case circle_righthalf_fill = "􀀃circle.righthalf.fill"
    /// 􀀂 circle.lefthalf.fill
    case circle_lefthalf_fill = "􀀂circle.lefthalf.fill"
    /// 􀀁 circle.fill
    case circle_fill = "􀀁circle.fill"
    /// 􀀀 circle
    case circle = "􀀀circle"
    /// 􀫱 line.diagonal.arrow
    case line_diagonal_arrow = "􀫱line.diagonal.arrow"
    /// 􀫰 line.diagonal
    case line_diagonal = "􀫰line.diagonal"
    /// 􀊳 mic.slash.fill
    case mic_slash_fill = "􀊳mic.slash.fill"
    /// 􀊲 mic.slash
    case mic_slash = "􀊲mic.slash"
    /// 􀒪 mic.circle.fill
    case mic_circle_fill = "􀒪mic.circle.fill"
    /// 􀒩 mic.circle
    case mic_circle = "􀒩mic.circle"
    /// 􀊱 mic.fill
    case mic_fill = "􀊱mic.fill"
    /// 􀊰 mic
    case mic = "􀊰mic"
    /// 􀤎 loupe
    case loupe = "􀤎loupe"
    /// 􀭥 text.magnifyingglass
    case text_magnifyingglass = "􀭥text.magnifyingglass"
    /// 􀥩 arrow.up.left.and.down.right.magnifyingglass
    case arrow_up_left_and_down_right_magnifyingglass = "􀥩arrow.up.left.and.down.right.magnifyingglass"
    /// 􀊮 1.magnifyingglass
    case N1_magnifyingglass = "􀊮1.magnifyingglass"
    /// 􀊭 minus.magnifyingglass
    case minus_magnifyingglass = "􀊭minus.magnifyingglass"
    /// 􀊬 plus.magnifyingglass
    case plus_magnifyingglass = "􀊬plus.magnifyingglass"
    /// 􀒓 magnifyingglass.circle.fill
    case magnifyingglass_circle_fill = "􀒓magnifyingglass.circle.fill"
    /// 􀒒 magnifyingglass.circle
    case magnifyingglass_circle = "􀒒magnifyingglass.circle"
    /// 􀊫 magnifyingglass
    case magnifyingglass = "􀊫magnifyingglass"
    /// 􀫊 swift
    case swift = "􀫊swift"
    /// 􀘩 gobackward.minus
    case gobackward_minus = "􀘩gobackward.minus"
    /// 􀘨 goforward.plus
    case goforward_plus = "􀘨goforward.plus"
    /// 􀘧 gobackward.90
    case gobackward_90 = "􀘧gobackward.90"
    /// 􀘦 goforward.90
    case goforward_90 = "􀘦goforward.90"
    /// 􀘥 gobackward.75
    case gobackward_75 = "􀘥gobackward.75"
    /// 􀘤 goforward.75
    case goforward_75 = "􀘤goforward.75"
    /// 􀎊 gobackward.60
    case gobackward_60 = "􀎊gobackward.60"
    /// 􀎉 goforward.60
    case goforward_60 = "􀎉goforward.60"
    /// 􀎈 gobackward.45
    case gobackward_45 = "􀎈gobackward.45"
    /// 􀎇 goforward.45
    case goforward_45 = "􀎇goforward.45"
    /// 􀎆 gobackward.30
    case gobackward_30 = "􀎆gobackward.30"
    /// 􀎅 goforward.30
    case goforward_30 = "􀎅goforward.30"
    /// 􀎄 gobackward.15
    case gobackward_15 = "􀎄gobackward.15"
    /// 􀎃 goforward.15
    case goforward_15 = "􀎃goforward.15"
    /// 􀎂 gobackward.10
    case gobackward_10 = "􀎂gobackward.10"
    /// 􀎁 goforward.10
    case goforward_10 = "􀎁goforward.10"
    /// 􀎀 gobackward
    case gobackward = "􀎀gobackward"
    /// 􀍿 goforward
    case goforward = "􀍿goforward"
    /// 􀣁 arrow.rectanglepath
    case arrow_rectanglepath = "􀣁arrow.rectanglepath"
    /// 􀑫 music.mic
    case music_mic = "􀑫music.mic"
    /// 􀫀 music.quarternote.3
    case music_quarternote_3 = "􀫀music.quarternote.3"
    /// 􀑬 music.note.list
    case music_note_list = "􀑬music.note.list"
    /// 􀑪 music.note
    case music_note = "􀑪music.note"
    /// 􀰮 badge.plus.radiowaves.forward
    case badge_plus_radiowaves_forward = "􀰮badge.plus.radiowaves.forward"
    /// 􀊪 badge.plus.radiowaves.right
    case badge_plus_radiowaves_right = "􀊪badge.plus.radiowaves.right"
    /// 􀊩 speaker.wave.3.fill
    case speaker_wave_3_fill = "􀊩speaker.wave.3.fill"
    /// 􀊨 speaker.wave.3
    case speaker_wave_3 = "􀊨speaker.wave.3"
    /// 􀥒 speaker.wave.2.circle.fill
    case speaker_wave_2_circle_fill = "􀥒speaker.wave.2.circle.fill"
    /// 􀥑 speaker.wave.2.circle
    case speaker_wave_2_circle = "􀥑speaker.wave.2.circle"
    /// 􀊧 speaker.wave.2.fill
    case speaker_wave_2_fill = "􀊧speaker.wave.2.fill"
    /// 􀊦 speaker.wave.2
    case speaker_wave_2 = "􀊦speaker.wave.2"
    /// 􀊥 speaker.wave.1.fill
    case speaker_wave_1_fill = "􀊥speaker.wave.1.fill"
    /// 􀊤 speaker.wave.1
    case speaker_wave_1 = "􀊤speaker.wave.1"
    /// 􀑞 speaker.zzz.fill
    case speaker_zzz_fill = "􀑞speaker.zzz.fill"
    /// 􀌊 speaker.zzz
    case speaker_zzz = "􀌊speaker.zzz"
    /// 􀫡 speaker.slash.circle.fill
    case speaker_slash_circle_fill = "􀫡speaker.slash.circle.fill"
    /// 􀫠 speaker.slash.circle
    case speaker_slash_circle = "􀫠speaker.slash.circle"
    /// 􀊣 speaker.slash.fill
    case speaker_slash_fill = "􀊣speaker.slash.fill"
    /// 􀊢 speaker.slash
    case speaker_slash = "􀊢speaker.slash"
    /// 􀊡 speaker.fill
    case speaker_fill = "􀊡speaker.fill"
    /// 􀊠 speaker
    case speaker = "􀊠speaker"
    /// 􀬳 megaphone.fill
    case megaphone_fill = "􀬳megaphone.fill"
    /// 􀬲 megaphone
    case megaphone = "􀬲megaphone"
    /// 􀵐 infinity.circle.fill
    case infinity_circle_fill = "􀵐infinity.circle.fill"
    /// 􀵏 infinity.circle
    case infinity_circle = "􀵏infinity.circle"
    /// 􀯠 infinity
    case infinity = "􀯠infinity"
    /// 􀵎 repeat.1.circle.fill
    case repeat_1_circle_fill = "􀵎repeat.1.circle.fill"
    /// 􀵍 repeat.1.circle
    case repeat_1_circle = "􀵍repeat.1.circle"
    /// 􀊟 repeat.1
    case repeat_1 = "􀊟repeat.1"
    /// 􀵌 repeat.circle.fill
    case repeat_circle_fill = "􀵌repeat.circle.fill"
    /// 􀵋 repeat.circle
    case repeat_circle = "􀵋repeat.circle"
    /// 􀊞 repeat
    case `repeat` = "􀊞repeat"
    /// 􀵊 shuffle.circle.fill
    case shuffle_circle_fill = "􀵊shuffle.circle.fill"
    /// 􀵉 shuffle.circle
    case shuffle_circle = "􀵉shuffle.circle"
    /// 􀊝 shuffle
    case shuffle = "􀊝shuffle"
    /// 􀑘 memories.badge.minus
    case memories_badge_minus = "􀑘memories.badge.minus"
    /// 􀑗 memories.badge.plus
    case memories_badge_plus = "􀑗memories.badge.plus"
    /// 􀑖 memories
    case memories = "􀑖memories"
    /// 􀢣 mount.fill
    case mount_fill = "􀢣mount.fill"
    /// 􀣊 mount
    case mount = "􀣊mount"
    /// 􀢢 eject.circle.fill
    case eject_circle_fill = "􀢢eject.circle.fill"
    /// 􀢡 eject.circle
    case eject_circle = "􀢡eject.circle"
    /// 􀆦 eject.fill
    case eject_fill = "􀆦eject.fill"
    /// 􀆥 eject
    case eject = "􀆥eject"
    /// 􀩫 forward.frame.fill
    case forward_frame_fill = "􀩫forward.frame.fill"
    /// 􀩪 forward.frame
    case forward_frame = "􀩪forward.frame"
    /// 􀩩 backward.frame.fill
    case backward_frame_fill = "􀩩backward.frame.fill"
    /// 􀩨 backward.frame
    case backward_frame = "􀩨backward.frame"
    /// 􀊔 forward.end.alt.fill
    case forward_end_alt_fill = "􀊔forward.end.alt.fill"
    /// 􀊓 forward.end.alt
    case forward_end_alt = "􀊓forward.end.alt"
    /// 􀊒 backward.end.alt.fill
    case backward_end_alt_fill = "􀊒backward.end.alt.fill"
    /// 􀊑 backward.end.alt
    case backward_end_alt = "􀊑backward.end.alt"
    /// 􀊐 forward.end.fill
    case forward_end_fill = "􀊐forward.end.fill"
    /// 􀊏 forward.end
    case forward_end = "􀊏forward.end"
    /// 􀊎 backward.end.fill
    case backward_end_fill = "􀊎backward.end.fill"
    /// 􀊍 backward.end
    case backward_end = "􀊍backward.end"
    /// 􀊌 forward.fill
    case forward_fill = "􀊌forward.fill"
    /// 􀊋 forward
    case forward = "􀊋forward"
    /// 􀊊 backward.fill
    case backward_fill = "􀊊backward.fill"
    /// 􀊉 backward
    case backward = "􀊉backward"
    /// 􀊈 playpause.fill
    case playpause_fill = "􀊈playpause.fill"
    /// 􀊇 playpause
    case playpause = "􀊇playpause"
    /// 􀢚 record.circle.fill
    case record_circle_fill = "􀢚record.circle.fill"
    /// 􀢙 record.circle
    case record_circle = "􀢙record.circle"
    /// 􀜫 stop.circle.fill
    case stop_circle_fill = "􀜫stop.circle.fill"
    /// 􀜪 stop.circle
    case stop_circle = "􀜪stop.circle"
    /// 􀛷 stop.fill
    case stop_fill = "􀛷stop.fill"
    /// 􀛶 stop
    case stop = "􀛶stop"
    /// 􀊜 pause.rectangle.fill
    case pause_rectangle_fill = "􀊜pause.rectangle.fill"
    /// 􀊛 pause.rectangle
    case pause_rectangle = "􀊛pause.rectangle"
    /// 􀊘 pause.circle.fill
    case pause_circle_fill = "􀊘pause.circle.fill"
    /// 􀊗 pause.circle
    case pause_circle = "􀊗pause.circle"
    /// 􀊆 pause.fill
    case pause_fill = "􀊆pause.fill"
    /// 􀊅 pause
    case pause = "􀊅pause"
    /// 􀪆 play.slash.fill
    case play_slash_fill = "􀪆play.slash.fill"
    /// 􀪅 play.slash
    case play_slash = "􀪅play.slash"
    /// 􀊚 play.rectangle.fill
    case play_rectangle_fill = "􀊚play.rectangle.fill"
    /// 􀊙 play.rectangle
    case play_rectangle = "􀊙play.rectangle"
    /// 􀊖 play.circle.fill
    case play_circle_fill = "􀊖play.circle.fill"
    /// 􀊕 play.circle
    case play_circle = "􀊕play.circle"
    /// 􀊄 play.fill
    case play_fill = "􀊄play.fill"
    /// 􀊃 play
    case play = "􀊃play"
    /// 􀈁 drop.triangle.fill
    case drop_triangle_fill = "􀈁drop.triangle.fill"
    /// 􀈀 drop.triangle
    case drop_triangle = "􀈀drop.triangle"
    /// 􀠒 drop.fill
    case drop_fill = "􀠒drop.fill"
    /// 􀠑 drop
    case drop = "􀠑drop"
    /// 􀇿 exclamationmark.triangle.fill
    case exclamationmark_triangle_fill = "􀇿exclamationmark.triangle.fill"
    /// 􀇾 exclamationmark.triangle
    case exclamationmark_triangle = "􀇾exclamationmark.triangle"
    /// 􀇽 xmark.seal.fill
    case xmark_seal_fill = "􀇽xmark.seal.fill"
    /// 􀇼 xmark.seal
    case xmark_seal = "􀇼xmark.seal"
    /// 􀇻 checkmark.seal.fill
    case checkmark_seal_fill = "􀇻checkmark.seal.fill"
    /// 􀇺 checkmark.seal
    case checkmark_seal = "􀇺checkmark.seal"
    /// 􀟇 seal.fill
    case seal_fill = "􀟇seal.fill"
    /// 􀟆 seal
    case seal = "􀟆seal"
    /// 􀩇 circle.grid.cross.down.fill
    case circle_grid_cross_down_fill = "􀩇circle.grid.cross.down.fill"
    /// 􀩆 circle.grid.cross.right.fill
    case circle_grid_cross_right_fill = "􀩆circle.grid.cross.right.fill"
    /// 􀩅 circle.grid.cross.up.fill
    case circle_grid_cross_up_fill = "􀩅circle.grid.cross.up.fill"
    /// 􀩄 circle.grid.cross.left.fill
    case circle_grid_cross_left_fill = "􀩄circle.grid.cross.left.fill"
    /// 􀧹 circle.grid.cross.fill
    case circle_grid_cross_fill = "􀧹circle.grid.cross.fill"
    /// 􀧸 circle.grid.cross
    case circle_grid_cross = "􀧸circle.grid.cross"
    /// 􀬏 circles.hexagonpath.fill
    case circles_hexagonpath_fill = "􀬏circles.hexagonpath.fill"
    /// 􀬎 circles.hexagonpath
    case circles_hexagonpath = "􀬎circles.hexagonpath"
    /// 􀙣 circles.hexagongrid.fill
    case circles_hexagongrid_fill = "􀙣circles.hexagongrid.fill"
    /// 􀙢 circles.hexagongrid
    case circles_hexagongrid = "􀙢circles.hexagongrid"
    /// 􀦼 square.grid.3x3.bottomright.fill
    case square_grid_3x3_bottomright_fill = "􀦼square.grid.3x3.bottomright.fill"
    /// 􀦻 square.grid.3x3.bottommiddle.fill
    case square_grid_3x3_bottommiddle_fill = "􀦻square.grid.3x3.bottommiddle.fill"
    /// 􀦺 square.grid.3x3.bottomleft.fill
    case square_grid_3x3_bottomleft_fill = "􀦺square.grid.3x3.bottomleft.fill"
    /// 􀦹 square.grid.3x3.middleright.fill
    case square_grid_3x3_middleright_fill = "􀦹square.grid.3x3.middleright.fill"
    /// 􀦸 square.grid.3x3.middle.fill
    case square_grid_3x3_middle_fill = "􀦸square.grid.3x3.middle.fill"
    /// 􀦷 square.grid.3x3.middleleft.fill
    case square_grid_3x3_middleleft_fill = "􀦷square.grid.3x3.middleleft.fill"
    /// 􀦶 square.grid.3x3.topright.fill
    case square_grid_3x3_topright_fill = "􀦶square.grid.3x3.topright.fill"
    /// 􀦵 square.grid.3x3.topmiddle.fill
    case square_grid_3x3_topmiddle_fill = "􀦵square.grid.3x3.topmiddle.fill"
    /// 􀦴 square.grid.3x3.topleft.fill
    case square_grid_3x3_topleft_fill = "􀦴square.grid.3x3.topleft.fill"
    /// 􀦳 square.grid.3x3.fill
    case square_grid_3x3_fill = "􀦳square.grid.3x3.fill"
    /// 􀦲 square.grid.3x3
    case square_grid_3x3 = "􀦲square.grid.3x3"
    /// 􀇹 circle.grid.3x3.fill
    case circle_grid_3x3_fill = "􀇹circle.grid.3x3.fill"
    /// 􀇸 circle.grid.3x3
    case circle_grid_3x3 = "􀇸circle.grid.3x3"
    /// 􀞿 circle.grid.2x2.fill
    case circle_grid_2x2_fill = "􀞿circle.grid.2x2.fill"
    /// 􀞾 circle.grid.2x2
    case circle_grid_2x2 = "􀞾circle.grid.2x2"
    /// 􀚉 rectangle.grid.1x2.fill
    case rectangle_grid_1x2_fill = "􀚉rectangle.grid.1x2.fill"
    /// 􀓛 rectangle.grid.1x2
    case rectangle_grid_1x2 = "􀓛rectangle.grid.1x2"
    /// 􀓚 square.grid.4x3.fill
    case square_grid_4x3_fill = "􀓚square.grid.4x3.fill"
    /// 􀤲 square.grid.3x1.fill.below.line.grid.1x2
    case square_grid_3x1_fill_below_line_grid_1x2 = "􀤲square.grid.3x1.fill.below.line.grid.1x2"
    /// 􀓙 square.grid.3x1.below.line.grid.1x2
    case square_grid_3x1_below_line_grid_1x2 = "􀓙square.grid.3x1.below.line.grid.1x2"
    /// 􀛧 rectangle.grid.2x2.fill
    case rectangle_grid_2x2_fill = "􀛧rectangle.grid.2x2.fill"
    /// 􀛦 rectangle.grid.2x2
    case rectangle_grid_2x2 = "􀛦rectangle.grid.2x2"
    /// 􀚈 square.grid.2x2.fill
    case square_grid_2x2_fill = "􀚈square.grid.2x2.fill"
    /// 􀇷 square.grid.2x2
    case square_grid_2x2 = "􀇷square.grid.2x2"
    /// 􀚆 rectangle.grid.3x2.fill
    case rectangle_grid_3x2_fill = "􀚆rectangle.grid.3x2.fill"
    /// 􀇶 rectangle.grid.3x2
    case rectangle_grid_3x2 = "􀇶rectangle.grid.3x2"
    /// 􀚇 square.grid.3x2.fill
    case square_grid_3x2_fill = "􀚇square.grid.3x2.fill"
    /// 􀇵 square.grid.3x2
    case square_grid_3x2 = "􀇵square.grid.3x2"
    /// 􀚅 rectangle.3.offgrid.fill
    case rectangle_3_offgrid_fill = "􀚅rectangle.3.offgrid.fill"
    /// 􀇴 rectangle.3.offgrid
    case rectangle_3_offgrid = "􀇴rectangle.3.offgrid"
    /// 􀞺 keyboard.onehanded.right
    case keyboard_onehanded_right = "􀞺keyboard.onehanded.right"
    /// 􀞹 keyboard.onehanded.left
    case keyboard_onehanded_left = "􀞹keyboard.onehanded.left"
    /// 􀣭 keyboard.chevron.compact.left
    case keyboard_chevron_compact_left = "􀣭keyboard.chevron.compact.left"
    /// 􀓖 keyboard.chevron.compact.down
    case keyboard_chevron_compact_down = "􀓖keyboard.chevron.compact.down"
    /// 􀫒 keyboard.badge.ellipsis
    case keyboard_badge_ellipsis = "􀫒keyboard.badge.ellipsis"
    /// 􀇳 keyboard
    case keyboard = "􀇳keyboard"
    /// 􀮴 cursorarrow.click.badge.clock
    case cursorarrow_click_badge_clock = "􀮴cursorarrow.click.badge.clock"
    /// 􀣡 cursorarrow.motionlines.click
    case cursorarrow_motionlines_click = "􀣡cursorarrow.motionlines.click"
    /// 􀣠 cursorarrow.motionlines
    case cursorarrow_motionlines = "􀣠cursorarrow.motionlines"
    /// 􀫍 dot.circle.and.cursorarrow
    case dot_circle_and_cursorarrow = "􀫍dot.circle.and.cursorarrow"
    /// 􀱢 filemenu.and.selection
    case filemenu_and_selection = "􀱢filemenu.and.selection"
    /// 􀯪 filemenu.and.cursorarrow
    case filemenu_and_cursorarrow = "􀯪filemenu.and.cursorarrow"
    /// 􀭈 contextualmenu.and.cursorarrow
    case contextualmenu_and_cursorarrow = "􀭈contextualmenu.and.cursorarrow"
    /// 􀭇 cursorarrow.click.2
    case cursorarrow_click_2 = "􀭇cursorarrow.click.2"
    /// 􀭆 cursorarrow.click
    case cursorarrow_click = "􀭆cursorarrow.click"
    /// 􀮐 cursorarrow.and.square.on.square.dashed
    case cursorarrow_and_square_on_square_dashed = "􀮐cursorarrow.and.square.on.square.dashed"
    /// 􀭅 cursorarrow.square
    case cursorarrow_square = "􀭅cursorarrow.square"
    /// 􀫌 cursorarrow
    case cursorarrow = "􀫌cursorarrow"
    /// 􀇰 cursorarrow.rays
    case cursorarrow_rays = "􀇰cursorarrow.rays"
    /// 􀇲 timelapse
    case timelapse = "􀇲timelapse"
    /// 􀇱 slowmo
    case slowmo = "􀇱slowmo"
    /// 􀇯 rays
    case rays = "􀇯rays"
    /// 􀇮 light.max
    case light_max = "􀇮light.max"
    /// 􀇭 light.min
    case light_min = "􀇭light.min"
    /// 􀙭 flame.fill
    case flame_fill = "􀙭flame.fill"
    /// 􀙬 flame
    case flame = "􀙬flame"
    /// 􀙖 umbrella.fill
    case umbrella_fill = "􀙖umbrella.fill"
    /// 􀙕 umbrella
    case umbrella = "􀙕umbrella"
    /// 􀵀 aqi.high
    case aqi_high = "􀵀aqi.high"
    /// 􀴿 aqi.medium
    case aqi_medium = "􀴿aqi.medium"
    /// 􀴾 aqi.low
    case aqi_low = "􀴾aqi.low"
    /// 􀇬 thermometer
    case thermometer = "􀇬thermometer"
    /// 􀇫 thermometer.snowflake
    case thermometer_snowflake = "􀇫thermometer.snowflake"
    /// 􀦜 thermometer.sun.fill
    case thermometer_sun_fill = "􀦜thermometer.sun.fill"
    /// 􀇪 thermometer.sun
    case thermometer_sun = "􀇪thermometer.sun"
    /// 􀇩 hurricane
    case hurricane = "􀇩hurricane"
    /// 􀇨 tropicalstorm
    case tropicalstorm = "􀇨tropicalstorm"
    /// 􀇧 tornado
    case tornado = "􀇧tornado"
    /// 􀇥 snow
    case snow = "􀇥snow"
    /// 􀇦 wind.snow
    case wind_snow = "􀇦wind.snow"
    /// 􀇤 wind
    case wind = "􀇤wind"
    /// 􀇣 smoke.fill
    case smoke_fill = "􀇣smoke.fill"
    /// 􀇢 smoke
    case smoke = "􀇢smoke"
    /// 􀇡 cloud.moon.bolt.fill
    case cloud_moon_bolt_fill = "􀇡cloud.moon.bolt.fill"
    /// 􀇠 cloud.moon.bolt
    case cloud_moon_bolt = "􀇠cloud.moon.bolt"
    /// 􀇝 cloud.moon.rain.fill
    case cloud_moon_rain_fill = "􀇝cloud.moon.rain.fill"
    /// 􀇜 cloud.moon.rain
    case cloud_moon_rain = "􀇜cloud.moon.rain"
    /// 􀇛 cloud.moon.fill
    case cloud_moon_fill = "􀇛cloud.moon.fill"
    /// 􀇚 cloud.moon
    case cloud_moon = "􀇚cloud.moon"
    /// 􀇙 cloud.sun.bolt.fill
    case cloud_sun_bolt_fill = "􀇙cloud.sun.bolt.fill"
    /// 􀇘 cloud.sun.bolt
    case cloud_sun_bolt = "􀇘cloud.sun.bolt"
    /// 􀇗 cloud.sun.rain.fill
    case cloud_sun_rain_fill = "􀇗cloud.sun.rain.fill"
    /// 􀇖 cloud.sun.rain
    case cloud_sun_rain = "􀇖cloud.sun.rain"
    /// 􀇕 cloud.sun.fill
    case cloud_sun_fill = "􀇕cloud.sun.fill"
    /// 􀇔 cloud.sun
    case cloud_sun = "􀇔cloud.sun"
    /// 􀇟 cloud.bolt.rain.fill
    case cloud_bolt_rain_fill = "􀇟cloud.bolt.rain.fill"
    /// 􀇞 cloud.bolt.rain
    case cloud_bolt_rain = "􀇞cloud.bolt.rain"
    /// 􀇓 cloud.bolt.fill
    case cloud_bolt_fill = "􀇓cloud.bolt.fill"
    /// 􀇒 cloud.bolt
    case cloud_bolt = "􀇒cloud.bolt"
    /// 􀇑 cloud.sleet.fill
    case cloud_sleet_fill = "􀇑cloud.sleet.fill"
    /// 􀇐 cloud.sleet
    case cloud_sleet = "􀇐cloud.sleet"
    /// 􀇏 cloud.snow.fill
    case cloud_snow_fill = "􀇏cloud.snow.fill"
    /// 􀇎 cloud.snow
    case cloud_snow = "􀇎cloud.snow"
    /// 􀇍 cloud.hail.fill
    case cloud_hail_fill = "􀇍cloud.hail.fill"
    /// 􀇌 cloud.hail
    case cloud_hail = "􀇌cloud.hail"
    /// 􀇋 cloud.fog.fill
    case cloud_fog_fill = "􀇋cloud.fog.fill"
    /// 􀇊 cloud.fog
    case cloud_fog = "􀇊cloud.fog"
    /// 􀇉 cloud.heavyrain.fill
    case cloud_heavyrain_fill = "􀇉cloud.heavyrain.fill"
    /// 􀇈 cloud.heavyrain
    case cloud_heavyrain = "􀇈cloud.heavyrain"
    /// 􀇇 cloud.rain.fill
    case cloud_rain_fill = "􀇇cloud.rain.fill"
    /// 􀇆 cloud.rain
    case cloud_rain = "􀇆cloud.rain"
    /// 􀇅 cloud.drizzle.fill
    case cloud_drizzle_fill = "􀇅cloud.drizzle.fill"
    /// 􀇄 cloud.drizzle
    case cloud_drizzle = "􀇄cloud.drizzle"
    /// 􀇃 cloud.fill
    case cloud_fill = "􀇃cloud.fill"
    /// 􀇂 cloud
    case cloud = "􀇂cloud"
    /// 􀇁 moon.stars.fill
    case moon_stars_fill = "􀇁moon.stars.fill"
    /// 􀇀 moon.stars
    case moon_stars = "􀇀moon.stars"
    /// 􀆿 sparkles
    case sparkles = "􀆿sparkles"
    /// 􀫸 sparkle
    case sparkle = "􀫸sparkle"
    /// 􀆾 moon.zzz.fill
    case moon_zzz_fill = "􀆾moon.zzz.fill"
    /// 􀆽 moon.zzz
    case moon_zzz = "􀆽moon.zzz"
    /// 􀖃 zzz
    case zzz = "􀖃zzz"
    /// 􀆼 moon.circle.fill
    case moon_circle_fill = "􀆼moon.circle.fill"
    /// 􀆻 moon.circle
    case moon_circle = "􀆻moon.circle"
    /// 􀆺 moon.fill
    case moon_fill = "􀆺moon.fill"
    /// 􀆹 moon
    case moon = "􀆹moon"
    /// 􀆸 sun.haze.fill
    case sun_haze_fill = "􀆸sun.haze.fill"
    /// 􀆷 sun.haze
    case sun_haze = "􀆷sun.haze"
    /// 􀆶 sun.dust.fill
    case sun_dust_fill = "􀆶sun.dust.fill"
    /// 􀆵 sun.dust
    case sun_dust = "􀆵sun.dust"
    /// 􀆴 sunset.fill
    case sunset_fill = "􀆴sunset.fill"
    /// 􀆳 sunset
    case sunset = "􀆳sunset"
    /// 􀆲 sunrise.fill
    case sunrise_fill = "􀆲sunrise.fill"
    /// 􀆱 sunrise
    case sunrise = "􀆱sunrise"
    /// 􀆮 sun.max.fill
    case sun_max_fill = "􀆮sun.max.fill"
    /// 􀆭 sun.max
    case sun_max = "􀆭sun.max"
    /// 􀆬 sun.min.fill
    case sun_min_fill = "􀆬sun.min.fill"
    /// 􀆫 sun.min
    case sun_min = "􀆫sun.min"
    /// 􀤆 network
    case network = "􀤆network"
    /// 􀆪 globe
    case globe = "􀆪globe"
    /// 􀝯 dot.arrowtriangles.up.right.down.left.circle
    case dot_arrowtriangles_up_right_down_left_circle = "􀝯dot.arrowtriangles.up.right.down.left.circle"
    /// 􀯝 directcurrent
    case directcurrent = "􀯝directcurrent"
    /// 􀥦 powersleep
    case powersleep = "􀥦powersleep"
    /// 􀥥 poweroff
    case poweroff = "􀥥poweroff"
    /// 􀥤 poweron
    case poweron = "􀥤poweron"
    /// 􀥣 togglepower
    case togglepower = "􀥣togglepower"
    /// 􀆨 power
    case power = "􀆨power"
    /// 􀪒 wake
    case wake = "􀪒wake"
    /// 􀜚 sleep
    case sleep = "􀜚sleep"
    /// 􀣨 restart.circle
    case restart_circle = "􀣨restart.circle"
    /// 􀯆 restart
    case restart = "􀯆restart"
    /// 􀆧 escape
    case escape = "􀆧escape"
    /// 􀆢 capslock.fill
    case capslock_fill = "􀆢capslock.fill"
    /// 􀆡 capslock
    case capslock = "􀆡capslock"
    /// 􀆞 shift.fill
    case shift_fill = "􀆞shift.fill"
    /// 􀆝 shift
    case shift = "􀆝shift"
    /// 􀆜 delete.left.fill
    case delete_left_fill = "􀆜delete.left.fill"
    /// 􀆛 delete.left
    case delete_left = "􀆛delete.left"
    /// 􀆚 clear.fill
    case clear_fill = "􀆚clear.fill"
    /// 􀆙 clear
    case clear = "􀆙clear"
    /// 􀆘 delete.right.fill
    case delete_right_fill = "􀆘delete.right.fill"
    /// 􀆗 delete.right
    case delete_right = "􀆗delete.right"
    /// 􀆖 alt
    case alt = "􀆖alt"
    /// 􀆕 option
    case option = "􀆕option"
    /// 􀪂 command.square.fill
    case command_square_fill = "􀪂command.square.fill"
    /// 􀪁 command.square
    case command_square = "􀪁command.square"
    /// 􀪀 command.circle.fill
    case command_circle_fill = "􀪀command.circle.fill"
    /// 􀩿 command.circle
    case command_circle = "􀩿command.circle"
    /// 􀆔 command
    case command = "􀆔command"
    /// 􀦏 square.and.at.rectangle
    case square_and_at_rectangle = "􀦏square.and.at.rectangle"
    /// 􀦎 person.crop.square.fill.and.at.rectangle
    case person_crop_square_fill_and_at_rectangle = "􀦎person.crop.square.fill.and.at.rectangle"
    /// 􀓦 person.2.square.stack.fill
    case person_2_square_stack_fill = "􀓦person.2.square.stack.fill"
    /// 􀓥 person.2.square.stack
    case person_2_square_stack = "􀓥person.2.square.stack"
    /// 􀏼 rectangle.stack.person.crop.fill
    case rectangle_stack_person_crop_fill = "􀏼rectangle.stack.person.crop.fill"
    /// 􀏻 rectangle.stack.person.crop
    case rectangle_stack_person_crop = "􀏻rectangle.stack.person.crop"
    /// 􀉺 person.crop.square.fill
    case person_crop_square_fill = "􀉺person.crop.square.fill"
    /// 􀉹 person.crop.square
    case person_crop_square = "􀉹person.crop.square"
    /// 􀉸 person.crop.circle.fill.badge.exclamationmark
    case person_crop_circle_fill_badge_exclamationmark = "􀉸person.crop.circle.fill.badge.exclamationmark"
    /// 􀉷 person.crop.circle.badge.exclamationmark
    case person_crop_circle_badge_exclamationmark = "􀉷person.crop.circle.badge.exclamationmark"
    /// 􀭾 person.crop.circle.fill.badge.questionmark
    case person_crop_circle_fill_badge_questionmark = "􀭾person.crop.circle.fill.badge.questionmark"
    /// 􀭽 person.crop.circle.badge.questionmark
    case person_crop_circle_badge_questionmark = "􀭽person.crop.circle.badge.questionmark"
    /// 􀉶 person.crop.circle.fill.badge.xmark
    case person_crop_circle_fill_badge_xmark = "􀉶person.crop.circle.fill.badge.xmark"
    /// 􀉵 person.crop.circle.badge.xmark
    case person_crop_circle_badge_xmark = "􀉵person.crop.circle.badge.xmark"
    /// 􀉴 person.crop.circle.fill.badge.checkmark
    case person_crop_circle_fill_badge_checkmark = "􀉴person.crop.circle.fill.badge.checkmark"
    /// 􀉳 person.crop.circle.badge.checkmark
    case person_crop_circle_badge_checkmark = "􀉳person.crop.circle.badge.checkmark"
    /// 􀉲 person.crop.circle.fill.badge.minus
    case person_crop_circle_fill_badge_minus = "􀉲person.crop.circle.fill.badge.minus"
    /// 􀉱 person.crop.circle.badge.minus
    case person_crop_circle_badge_minus = "􀉱person.crop.circle.badge.minus"
    /// 􀉰 person.crop.circle.fill.badge.plus
    case person_crop_circle_fill_badge_plus = "􀉰person.crop.circle.fill.badge.plus"
    /// 􀉯 person.crop.circle.badge.plus
    case person_crop_circle_badge_plus = "􀉯person.crop.circle.badge.plus"
    /// 􀉮 person.crop.circle.fill
    case person_crop_circle_fill = "􀉮person.crop.circle.fill"
    /// 􀉭 person.crop.circle
    case person_crop_circle = "􀉭person.crop.circle"
    /// 􀝋 person.3.fill
    case person_3_fill = "􀝋person.3.fill"
    /// 􀝊 person.3
    case person_3 = "􀝊person.3"
    /// 􀠄 person.2.circle.fill
    case person_2_circle_fill = "􀠄person.2.circle.fill"
    /// 􀠃 person.2.circle
    case person_2_circle = "􀠃person.2.circle"
    /// 􀉬 person.2.fill
    case person_2_fill = "􀉬person.2.fill"
    /// 􀉫 person.2
    case person_2 = "􀉫person.2"
    /// 􀪽 person.fill.and.arrow.left.and.arrow.right
    case person_fill_and_arrow_left_and_arrow_right = "􀪽person.fill.and.arrow.left.and.arrow.right"
    /// 􀪼 person.and.arrow.left.and.arrow.right
    case person_and_arrow_left_and_arrow_right = "􀪼person.and.arrow.left.and.arrow.right"
    /// 􀜘 person.fill.badge.minus
    case person_fill_badge_minus = "􀜘person.fill.badge.minus"
    /// 􀜗 person.badge.minus
    case person_badge_minus = "􀜗person.badge.minus"
    /// 􀜖 person.fill.badge.plus
    case person_fill_badge_plus = "􀜖person.fill.badge.plus"
    /// 􀜕 person.badge.plus
    case person_badge_plus = "􀜕person.badge.plus"
    /// 􀓤 person.circle.fill
    case person_circle_fill = "􀓤person.circle.fill"
    /// 􀓣 person.circle
    case person_circle = "􀓣person.circle"
    /// 􀯩 person.fill.questionmark
    case person_fill_questionmark = "􀯩person.fill.questionmark"
    /// 􀯨 person.fill.xmark
    case person_fill_xmark = "􀯨person.fill.xmark"
    /// 􀯧 person.fill.checkmark
    case person_fill_checkmark = "􀯧person.fill.checkmark"
    /// 􀯓 person.fill.turn.left
    case person_fill_turn_left = "􀯓person.fill.turn.left"
    /// 􀯒 person.fill.turn.down
    case person_fill_turn_down = "􀯒person.fill.turn.down"
    /// 􀯑 person.fill.turn.right
    case person_fill_turn_right = "􀯑person.fill.turn.right"
    /// 􀉪 person.fill
    case person_fill = "􀉪person.fill"
    /// 􀉩 person
    case person = "􀉩person"
    /// 􀉨 lineweight
    case lineweight = "􀉨lineweight"
    /// 􀉤 personalhotspot
    case personalhotspot = "􀉤personalhotspot"
    /// 􀥕 link.badge.plus
    case link_badge_plus = "􀥕link.badge.plus"
    /// 􀒡 link.circle.fill
    case link_circle_fill = "􀒡link.circle.fill"
    /// 􀒠 link.circle
    case link_circle = "􀒠link.circle"
    /// 􀉣 link
    case link = "􀉣link"
    /// 􀥪 rectangle.dashed.and.paperclip
    case rectangle_dashed_and_paperclip = "􀥪rectangle.dashed.and.paperclip"
    /// 􀒖 rectangle.and.paperclip
    case rectangle_and_paperclip = "􀒖rectangle.and.paperclip"
    /// 􀢏 paperclip.badge.ellipsis
    case paperclip_badge_ellipsis = "􀢏paperclip.badge.ellipsis"
    /// 􀒕 paperclip.circle.fill
    case paperclip_circle_fill = "􀒕paperclip.circle.fill"
    /// 􀒔 paperclip.circle
    case paperclip_circle = "􀒔paperclip.circle"
    /// 􀉢 paperclip
    case paperclip = "􀉢paperclip"
    /// 􀪄 ticket.fill
    case ticket_fill = "􀪄ticket.fill"
    /// 􀪃 ticket
    case ticket = "􀪃ticket"
    /// 􀫔 graduationcap.fill
    case graduationcap_fill = "􀫔graduationcap.fill"
    /// 􀫓 graduationcap
    case graduationcap = "􀫓graduationcap"
    /// 􀛯 rosette
    case rosette = "􀛯rosette"
    /// 􀟎 bookmark.slash.fill
    case bookmark_slash_fill = "􀟎bookmark.slash.fill"
    /// 􀟍 bookmark.slash
    case bookmark_slash = "􀟍bookmark.slash"
    /// 􀉡 bookmark.circle.fill
    case bookmark_circle_fill = "􀉡bookmark.circle.fill"
    /// 􀉠 bookmark.circle
    case bookmark_circle = "􀉠bookmark.circle"
    /// 􀉟 bookmark.fill
    case bookmark_fill = "􀉟bookmark.fill"
    /// 􀉞 bookmark
    case bookmark = "􀉞bookmark"
    /// 􀤡 greetingcard.fill
    case greetingcard_fill = "􀤡greetingcard.fill"
    /// 􀤠 greetingcard
    case greetingcard = "􀤠greetingcard"
    /// 􀫘 text.book.closed.fill
    case text_book_closed_fill = "􀫘text.book.closed.fill"
    /// 􀫗 text.book.closed
    case text_book_closed = "􀫗text.book.closed"
    /// 􀫖 character.book.closed.fill
    case character_book_closed_fill = "􀫖character.book.closed.fill"
    /// 􀫕 character.book.closed
    case character_book_closed = "􀫕character.book.closed"
    /// 􀤟 book.closed.fill
    case book_closed_fill = "􀤟book.closed.fill"
    /// 􀤞 book.closed
    case book_closed = "􀤞book.closed"
    /// 􀬓 books.vertical.fill
    case books_vertical_fill = "􀬓books.vertical.fill"
    /// 􀬒 books.vertical
    case books_vertical = "􀬒books.vertical"
    /// 􀥅 newspaper.fill
    case newspaper_fill = "􀥅newspaper.fill"
    /// 􀤦 newspaper
    case newspaper = "􀤦newspaper"
    /// 􀉝 book.circle.fill
    case book_circle_fill = "􀉝book.circle.fill"
    /// 􀉜 book.circle
    case book_circle = "􀉜book.circle"
    /// 􀉛 book.fill
    case book_fill = "􀉛book.fill"
    /// 􀉚 book
    case book = "􀉚book"
    /// 􀰩 arrowshape.bounce.forward.fill
    case arrowshape_bounce_forward_fill = "􀰩arrowshape.bounce.forward.fill"
    /// 􀰨 arrowshape.bounce.forward
    case arrowshape_bounce_forward = "􀰨arrowshape.bounce.forward"
    /// 􀒑 arrowshape.bounce.right.fill
    case arrowshape_bounce_right_fill = "􀒑arrowshape.bounce.right.fill"
    /// 􀉙 arrowshape.bounce.right
    case arrowshape_bounce_right = "􀉙arrowshape.bounce.right"
    /// 􀰧 arrowshape.zigzag.forward.fill
    case arrowshape_zigzag_forward_fill = "􀰧arrowshape.zigzag.forward.fill"
    /// 􀰦 arrowshape.zigzag.forward
    case arrowshape_zigzag_forward = "􀰦arrowshape.zigzag.forward"
    /// 􀒐 arrowshape.zigzag.right.fill
    case arrowshape_zigzag_right_fill = "􀒐arrowshape.zigzag.right.fill"
    /// 􀉘 arrowshape.zigzag.right
    case arrowshape_zigzag_right = "􀉘arrowshape.zigzag.right"
    /// 􀰥 arrowshape.turn.up.backward.2.circle.fill
    case arrowshape_turn_up_backward_2_circle_fill = "􀰥arrowshape.turn.up.backward.2.circle.fill"
    /// 􀰤 arrowshape.turn.up.backward.2.circle
    case arrowshape_turn_up_backward_2_circle = "􀰤arrowshape.turn.up.backward.2.circle"
    /// 􀰣 arrowshape.turn.up.backward.2.fill
    case arrowshape_turn_up_backward_2_fill = "􀰣arrowshape.turn.up.backward.2.fill"
    /// 􀰢 arrowshape.turn.up.backward.2
    case arrowshape_turn_up_backward_2 = "􀰢arrowshape.turn.up.backward.2"
    /// 􀉗 arrowshape.turn.up.left.2.circle.fill
    case arrowshape_turn_up_left_2_circle_fill = "􀉗arrowshape.turn.up.left.2.circle.fill"
    /// 􀉖 arrowshape.turn.up.left.2.circle
    case arrowshape_turn_up_left_2_circle = "􀉖arrowshape.turn.up.left.2.circle"
    /// 􀉕 arrowshape.turn.up.left.2.fill
    case arrowshape_turn_up_left_2_fill = "􀉕arrowshape.turn.up.left.2.fill"
    /// 􀉔 arrowshape.turn.up.left.2
    case arrowshape_turn_up_left_2 = "􀉔arrowshape.turn.up.left.2"
    /// 􀰡 arrowshape.turn.up.forward.circle.fill
    case arrowshape_turn_up_forward_circle_fill = "􀰡arrowshape.turn.up.forward.circle.fill"
    /// 􀰠 arrowshape.turn.up.forward.circle
    case arrowshape_turn_up_forward_circle = "􀰠arrowshape.turn.up.forward.circle"
    /// 􀰟 arrowshape.turn.up.forward.fill
    case arrowshape_turn_up_forward_fill = "􀰟arrowshape.turn.up.forward.fill"
    /// 􀰞 arrowshape.turn.up.forward
    case arrowshape_turn_up_forward = "􀰞arrowshape.turn.up.forward"
    /// 􀉓 arrowshape.turn.up.right.circle.fill
    case arrowshape_turn_up_right_circle_fill = "􀉓arrowshape.turn.up.right.circle.fill"
    /// 􀉒 arrowshape.turn.up.right.circle
    case arrowshape_turn_up_right_circle = "􀉒arrowshape.turn.up.right.circle"
    /// 􀉑 arrowshape.turn.up.right.fill
    case arrowshape_turn_up_right_fill = "􀉑arrowshape.turn.up.right.fill"
    /// 􀉐 arrowshape.turn.up.right
    case arrowshape_turn_up_right = "􀉐arrowshape.turn.up.right"
    /// 􀰝 arrowshape.turn.up.backward.circle.fill
    case arrowshape_turn_up_backward_circle_fill = "􀰝arrowshape.turn.up.backward.circle.fill"
    /// 􀰜 arrowshape.turn.up.backward.circle
    case arrowshape_turn_up_backward_circle = "􀰜arrowshape.turn.up.backward.circle"
    /// 􀰛 arrowshape.turn.up.backward.fill
    case arrowshape_turn_up_backward_fill = "􀰛arrowshape.turn.up.backward.fill"
    /// 􀰚 arrowshape.turn.up.backward
    case arrowshape_turn_up_backward = "􀰚arrowshape.turn.up.backward"
    /// 􀉏 arrowshape.turn.up.left.circle.fill
    case arrowshape_turn_up_left_circle_fill = "􀉏arrowshape.turn.up.left.circle.fill"
    /// 􀉎 arrowshape.turn.up.left.circle
    case arrowshape_turn_up_left_circle = "􀉎arrowshape.turn.up.left.circle"
    /// 􀉍 arrowshape.turn.up.left.fill
    case arrowshape_turn_up_left_fill = "􀉍arrowshape.turn.up.left.fill"
    /// 􀉌 arrowshape.turn.up.left
    case arrowshape_turn_up_left = "􀉌arrowshape.turn.up.left"
    /// 􀮝 calendar.badge.exclamationmark
    case calendar_badge_exclamationmark = "􀮝calendar.badge.exclamationmark"
    /// 􀧞 calendar.badge.clock
    case calendar_badge_clock = "􀧞calendar.badge.clock"
    /// 􀉋 calendar.badge.minus
    case calendar_badge_minus = "􀉋calendar.badge.minus"
    /// 􀉊 calendar.badge.plus
    case calendar_badge_plus = "􀉊calendar.badge.plus"
    /// 􀒏 calendar.circle.fill
    case calendar_circle_fill = "􀒏calendar.circle.fill"
    /// 􀒎 calendar.circle
    case calendar_circle = "􀒎calendar.circle"
    /// 􀉉 calendar
    case calendar = "􀉉calendar"
    /// 􀣙 note.text.badge.plus
    case note_text_badge_plus = "􀣙note.text.badge.plus"
    /// 􀓕 note.text
    case note_text = "􀓕note.text"
    /// 􀧵 note
    case note = "􀧵note"
    /// 􀕹 doc.text.magnifyingglass
    case doc_text_magnifyingglass = "􀕹doc.text.magnifyingglass"
    /// 􀪏 terminal.fill
    case terminal_fill = "􀪏terminal.fill"
    /// 􀩼 terminal
    case terminal = "􀩼terminal"
    /// 􀩳 list.bullet.rectangle
    case list_bullet_rectangle = "􀩳list.bullet.rectangle"
    /// 􀦌 chart.bar.doc.horizontal.fill
    case chart_bar_doc_horizontal_fill = "􀦌chart.bar.doc.horizontal.fill"
    /// 􀥜 chart.bar.doc.horizontal
    case chart_bar_doc_horizontal = "􀥜chart.bar.doc.horizontal"
    /// 􀳽 doc.text.below.ecg.fill
    case doc_text_below_ecg_fill = "􀳽doc.text.below.ecg.fill"
    /// 􀳼 doc.text.below.ecg
    case doc_text_below_ecg = "􀳼doc.text.below.ecg"
    /// 􀦋 doc.append.fill
    case doc_append_fill = "􀦋doc.append.fill"
    /// 􀉇 doc.append
    case doc_append = "􀉇doc.append"
    /// 􀥨 doc.plaintext.fill
    case doc_plaintext_fill = "􀥨doc.plaintext.fill"
    /// 􀉆 doc.plaintext
    case doc_plaintext = "􀉆doc.plaintext"
    /// 􀦊 doc.richtext.fill
    case doc_richtext_fill = "􀦊doc.richtext.fill"
    /// 􀉅 doc.richtext
    case doc_richtext = "􀉅doc.richtext"
    /// 􀉄 doc.on.clipboard.fill
    case doc_on_clipboard_fill = "􀉄doc.on.clipboard.fill"
    /// 􀫷 arrow.triangle.2.circlepath.doc.on.clipboard
    case arrow_triangle_2_circlepath_doc_on_clipboard = "􀫷arrow.triangle.2.circlepath.doc.on.clipboard"
    /// 􀫶 arrow.up.doc.on.clipboard
    case arrow_up_doc_on_clipboard = "􀫶arrow.up.doc.on.clipboard"
    /// 􀫵 arrow.right.doc.on.clipboard
    case arrow_right_doc_on_clipboard = "􀫵arrow.right.doc.on.clipboard"
    /// 􀉃 doc.on.clipboard
    case doc_on_clipboard = "􀉃doc.on.clipboard"
    /// 􀉂 doc.on.doc.fill
    case doc_on_doc_fill = "􀉂doc.on.doc.fill"
    /// 􀉁 doc.on.doc
    case doc_on_doc = "􀉁doc.on.doc"
    /// 􀤧 doc.zipper
    case doc_zipper = "􀤧doc.zipper"
    /// 􀉀 doc.text.fill
    case doc_text_fill = "􀉀doc.text.fill"
    /// 􀈿 doc.text
    case doc_text = "􀈿doc.text"
    /// 􀈾 arrow.down.doc.fill
    case arrow_down_doc_fill = "􀈾arrow.down.doc.fill"
    /// 􀈽 arrow.down.doc
    case arrow_down_doc = "􀈽arrow.down.doc"
    /// 􀈼 arrow.up.doc.fill
    case arrow_up_doc_fill = "􀈼arrow.up.doc.fill"
    /// 􀈻 arrow.up.doc
    case arrow_up_doc = "􀈻arrow.up.doc"
    /// 􀢎 lock.doc.fill
    case lock_doc_fill = "􀢎lock.doc.fill"
    /// 􀢍 lock.doc
    case lock_doc = "􀢍lock.doc"
    /// 􀩵 doc.fill.badge.ellipsis
    case doc_fill_badge_ellipsis = "􀩵doc.fill.badge.ellipsis"
    /// 􀩴 doc.badge.ellipsis
    case doc_badge_ellipsis = "􀩴doc.badge.ellipsis"
    /// 􀩛 doc.badge.gearshape.fill
    case doc_badge_gearshape_fill = "􀩛doc.badge.gearshape.fill"
    /// 􀩚 doc.badge.gearshape
    case doc_badge_gearshape = "􀩚doc.badge.gearshape"
    /// 􀣘 doc.fill.badge.plus
    case doc_fill_badge_plus = "􀣘doc.fill.badge.plus"
    /// 􀣗 doc.badge.plus
    case doc_badge_plus = "􀣗doc.badge.plus"
    /// 􀈺 doc.circle.fill
    case doc_circle_fill = "􀈺doc.circle.fill"
    /// 􀈹 doc.circle
    case doc_circle = "􀈹doc.circle"
    /// 􀈸 doc.fill
    case doc_fill = "􀈸doc.fill"
    /// 􀈷 doc
    case doc = "􀈷doc"
    /// 􀈶 arrow.up.bin.fill
    case arrow_up_bin_fill = "􀈶arrow.up.bin.fill"
    /// 􀈵 arrow.up.bin
    case arrow_up_bin = "􀈵arrow.up.bin"
    /// 􀈴 xmark.bin.circle.fill
    case xmark_bin_circle_fill = "􀈴xmark.bin.circle.fill"
    /// 􀈳 xmark.bin.circle
    case xmark_bin_circle = "􀈳xmark.bin.circle"
    /// 􀈲 xmark.bin.fill
    case xmark_bin_fill = "􀈲xmark.bin.fill"
    /// 􀈱 xmark.bin
    case xmark_bin = "􀈱xmark.bin"
    /// 􀈰 archivebox.circle.fill
    case archivebox_circle_fill = "􀈰archivebox.circle.fill"
    /// 􀈯 archivebox.circle
    case archivebox_circle = "􀈯archivebox.circle"
    /// 􀈮 archivebox.fill
    case archivebox_fill = "􀈮archivebox.fill"
    /// 􀈭 archivebox
    case archivebox = "􀈭archivebox"
    /// 􀨥 externaldrive.connected.to.line.below.fill
    case externaldrive_connected_to_line_below_fill = "􀨥externaldrive.connected.to.line.below.fill"
    /// 􀨤 externaldrive.connected.to.line.below
    case externaldrive_connected_to_line_below = "􀨤externaldrive.connected.to.line.below"
    /// 􀤅 opticaldiscdrive.fill
    case opticaldiscdrive_fill = "􀤅opticaldiscdrive.fill"
    /// 􀤄 opticaldiscdrive
    case opticaldiscdrive = "􀤄opticaldiscdrive"
    /// 􀨪 internaldrive.fill
    case internaldrive_fill = "􀨪internaldrive.fill"
    /// 􀥾 internaldrive
    case internaldrive = "􀥾internaldrive"
    /// 􀤝 externaldrive.fill.badge.timemachine
    case externaldrive_fill_badge_timemachine = "􀤝externaldrive.fill.badge.timemachine"
    /// 􀤜 externaldrive.badge.timemachine
    case externaldrive_badge_timemachine = "􀤜externaldrive.badge.timemachine"
    /// 􀩯 externaldrive.fill.badge.wifi
    case externaldrive_fill_badge_wifi = "􀩯externaldrive.fill.badge.wifi"
    /// 􀩮 externaldrive.badge.wifi
    case externaldrive_badge_wifi = "􀩮externaldrive.badge.wifi"
    /// 􀪺 externaldrive.fill.badge.icloud
    case externaldrive_fill_badge_icloud = "􀪺externaldrive.fill.badge.icloud"
    /// 􀪹 externaldrive.badge.icloud
    case externaldrive_badge_icloud = "􀪹externaldrive.badge.icloud"
    /// 􀩭 externaldrive.fill.badge.person.crop
    case externaldrive_fill_badge_person_crop = "􀩭externaldrive.fill.badge.person.crop"
    /// 􀩬 externaldrive.badge.person.crop
    case externaldrive_badge_person_crop = "􀩬externaldrive.badge.person.crop"
    /// 􀩕 externaldrive.fill.badge.xmark
    case externaldrive_fill_badge_xmark = "􀩕externaldrive.fill.badge.xmark"
    /// 􀩑 externaldrive.badge.xmark
    case externaldrive_badge_xmark = "􀩑externaldrive.badge.xmark"
    /// 􀩔 externaldrive.fill.badge.checkmark
    case externaldrive_fill_badge_checkmark = "􀩔externaldrive.fill.badge.checkmark"
    /// 􀩐 externaldrive.badge.checkmark
    case externaldrive_badge_checkmark = "􀩐externaldrive.badge.checkmark"
    /// 􀩓 externaldrive.fill.badge.minus
    case externaldrive_fill_badge_minus = "􀩓externaldrive.fill.badge.minus"
    /// 􀩏 externaldrive.badge.minus
    case externaldrive_badge_minus = "􀩏externaldrive.badge.minus"
    /// 􀩒 externaldrive.fill.badge.plus
    case externaldrive_fill_badge_plus = "􀩒externaldrive.fill.badge.plus"
    /// 􀩎 externaldrive.badge.plus
    case externaldrive_badge_plus = "􀩎externaldrive.badge.plus"
    /// 􀤃 externaldrive.fill
    case externaldrive_fill = "􀤃externaldrive.fill"
    /// 􀤂 externaldrive
    case externaldrive = "􀤂externaldrive"
    /// 􀈬 tray.full.fill
    case tray_full_fill = "􀈬tray.full.fill"
    /// 􀈫 tray.full
    case tray_full = "􀈫tray.full"
    /// 􀈪 tray.2.fill
    case tray_2_fill = "􀈪tray.2.fill"
    /// 􀈩 tray.2
    case tray_2 = "􀈩tray.2"
    /// 􀈨 tray.and.arrow.down.fill
    case tray_and_arrow_down_fill = "􀈨tray.and.arrow.down.fill"
    /// 􀈧 tray.and.arrow.down
    case tray_and_arrow_down = "􀈧tray.and.arrow.down"
    /// 􀈦 tray.and.arrow.up.fill
    case tray_and_arrow_up_fill = "􀈦tray.and.arrow.up.fill"
    /// 􀈥 tray.and.arrow.up
    case tray_and_arrow_up = "􀈥tray.and.arrow.up"
    /// 􀒍 tray.circle.fill
    case tray_circle_fill = "􀒍tray.circle.fill"
    /// 􀒌 tray.circle
    case tray_circle = "􀒌tray.circle"
    /// 􀈤 tray.fill
    case tray_fill = "􀈤tray.fill"
    /// 􀈣 tray
    case tray = "􀈣tray"
    /// 􀈢 paperplane.circle.fill
    case paperplane_circle_fill = "􀈢paperplane.circle.fill"
    /// 􀈡 paperplane.circle
    case paperplane_circle = "􀈡paperplane.circle"
    /// 􀈠 paperplane.fill
    case paperplane_fill = "􀈠paperplane.fill"
    /// 􀈟 paperplane
    case paperplane = "􀈟paperplane"
    /// 􀬕 questionmark.folder.fill
    case questionmark_folder_fill = "􀬕questionmark.folder.fill"
    /// 􀬔 questionmark.folder
    case questionmark_folder = "􀬔questionmark.folder"
    /// 􀤱 plus.rectangle.fill.on.folder.fill
    case plus_rectangle_fill_on_folder_fill = "􀤱plus.rectangle.fill.on.folder.fill"
    /// 􀤰 plus.rectangle.on.folder
    case plus_rectangle_on_folder = "􀤰plus.rectangle.on.folder"
    /// 􀣎 folder.fill.badge.gear
    case folder_fill_badge_gear = "􀣎folder.fill.badge.gear"
    /// 􀣍 folder.badge.gear
    case folder_badge_gear = "􀣍folder.badge.gear"
    /// 􀣖 square.grid.3x1.folder.fill.badge.plus
    case square_grid_3x1_folder_fill_badge_plus = "􀣖square.grid.3x1.folder.fill.badge.plus"
    /// 􀣕 square.grid.3x1.folder.badge.plus
    case square_grid_3x1_folder_badge_plus = "􀣕square.grid.3x1.folder.badge.plus"
    /// 􀈞 folder.fill.badge.person.crop
    case folder_fill_badge_person_crop = "􀈞folder.fill.badge.person.crop"
    /// 􀈝 folder.badge.person.crop
    case folder_badge_person_crop = "􀈝folder.badge.person.crop"
    /// 􀧇 folder.fill.badge.questionmark
    case folder_fill_badge_questionmark = "􀧇folder.fill.badge.questionmark"
    /// 􀧆 folder.badge.questionmark
    case folder_badge_questionmark = "􀧆folder.badge.questionmark"
    /// 􀈜 folder.fill.badge.minus
    case folder_fill_badge_minus = "􀈜folder.fill.badge.minus"
    /// 􀈛 folder.badge.minus
    case folder_badge_minus = "􀈛folder.badge.minus"
    /// 􀈚 folder.fill.badge.plus
    case folder_fill_badge_plus = "􀈚folder.fill.badge.plus"
    /// 􀈙 folder.badge.plus
    case folder_badge_plus = "􀈙folder.badge.plus"
    /// 􀈘 folder.circle.fill
    case folder_circle_fill = "􀈘folder.circle.fill"
    /// 􀈗 folder.circle
    case folder_circle = "􀈗folder.circle"
    /// 􀈖 folder.fill
    case folder_fill = "􀈖folder.fill"
    /// 􀈕 folder
    case folder = "􀈕folder"
    /// 􀜨 trash.slash.fill
    case trash_slash_fill = "􀜨trash.slash.fill"
    /// 􀜧 trash.slash
    case trash_slash = "􀜧trash.slash"
    /// 􀈔 trash.circle.fill
    case trash_circle_fill = "􀈔trash.circle.fill"
    /// 􀈓 trash.circle
    case trash_circle = "􀈓trash.circle"
    /// 􀈒 trash.fill
    case trash_fill = "􀈒trash.fill"
    /// 􀈑 trash
    case trash = "􀈑trash"
    /// 􀣳 lasso.sparkles
    case lasso_sparkles = "􀣳lasso.sparkles"
    /// 􀓩 lasso
    case lasso = "􀓩lasso"
    /// 􀧚 pencil.tip.crop.circle.badge.arrow.forward
    case pencil_tip_crop_circle_badge_arrow_forward = "􀧚pencil.tip.crop.circle.badge.arrow.forward"
    /// 􀉧 pencil.tip.crop.circle.badge.minus
    case pencil_tip_crop_circle_badge_minus = "􀉧pencil.tip.crop.circle.badge.minus"
    /// 􀉦 pencil.tip.crop.circle.badge.plus
    case pencil_tip_crop_circle_badge_plus = "􀉦pencil.tip.crop.circle.badge.plus"
    /// 􀉥 pencil.tip.crop.circle
    case pencil_tip_crop_circle = "􀉥pencil.tip.crop.circle"
    /// 􀒋 pencil.tip
    case pencil_tip = "􀒋pencil.tip"
    /// 􀈐 pencil.and.outline
    case pencil_and_outline = "􀈐pencil.and.outline"
    /// 􀦇 highlighter
    case highlighter = "􀦇highlighter"
    /// 􀤑 scribble.variable
    case scribble_variable = "􀤑scribble.variable"
    /// 􀓨 scribble
    case scribble = "􀓨scribble"
    /// 􀈏 rectangle.and.pencil.and.ellipsis
    case rectangle_and_pencil_and_ellipsis = "􀈏rectangle.and.pencil.and.ellipsis"
    /// 􀈎 square.and.pencil
    case square_and_pencil = "􀈎square.and.pencil"
    /// 􀈍 pencil.slash
    case pencil_slash = "􀈍pencil.slash"
    /// 􀈌 pencil.circle.fill
    case pencil_circle_fill = "􀈌pencil.circle.fill"
    /// 􀈋 pencil.circle
    case pencil_circle = "􀈋pencil.circle"
    /// 􀈊 pencil
    case pencil = "􀈊pencil"
    /// 􀈉 square.and.arrow.down.on.square.fill
    case square_and_arrow_down_on_square_fill = "􀈉square.and.arrow.down.on.square.fill"
    /// 􀈈 square.and.arrow.down.on.square
    case square_and_arrow_down_on_square = "􀈈square.and.arrow.down.on.square"
    /// 􀈇 square.and.arrow.up.on.square.fill
    case square_and_arrow_up_on_square_fill = "􀈇square.and.arrow.up.on.square.fill"
    /// 􀈆 square.and.arrow.up.on.square
    case square_and_arrow_up_on_square = "􀈆square.and.arrow.up.on.square"
    /// 􀈅 square.and.arrow.down.fill
    case square_and_arrow_down_fill = "􀈅square.and.arrow.down.fill"
    /// 􀈄 square.and.arrow.down
    case square_and_arrow_down = "􀈄square.and.arrow.down"
    /// 􀈃 square.and.arrow.up.fill
    case square_and_arrow_up_fill = "􀈃square.and.arrow.up.fill"
    /// 􀈂 square.and.arrow.up
    case square_and_arrow_up = "􀈂square.and.arrow.up"

}



extension SystemSymbol {
    /// Run this function to (re-)generate symbols from the `symbolCodes` and `symbolNames` below
    public static func generateSymbolEnum() -> String {
        let codes = Array(symbolCodes.unicodeScalars)
        let codeNames = symbolNames.split(separator: "\n").map(\.description)
        assert(codes.count == codeNames.count)
        var lines: [String] = []

        for (code, codeName) in zip(codes, codeNames) {
            let caseName = (("0"..."9").contains(codeName.first ?? "0") ? "N" : "")
                + codeName.split(separator: ".").joined(separator: "_")
            let codeChar = String(code)
            lines.append("    /// \(codeChar) \(codeName)")
            lines.append("    case \(caseName) = \"\(codeChar)\(codeName)\"")
        }

        return lines.joined(separator: "\n")
    }

    /// Symbol codes obtained from `SF Symbols 2.app` by sorting by natural order, secting all, and Edit > Copy
    private static let symbolCodes = "􀣺􀛢􀛡􀚼􀚻􀛠􀛟􀚺􀚹􀛞􀛝􀚸􀚷􀛜􀛛􀚶􀚵􀛚􀛙􀚴􀚳􀛘􀛗􀚲􀚱􀛖􀛕􀚰􀚯􀛔􀛓􀚮􀚭􀛒􀛑􀚬􀚫􀛐􀛏􀚪􀚩􀛎􀛍􀚨􀚧􀛌􀛋􀚦􀚥􀛊􀛉􀚤􀚣􀛈􀛇􀚢􀚡􀛆􀛅􀚠􀚟􀛄􀛃􀚞􀚝􀛂􀛁􀚜􀚛􀛀􀚿􀚚􀚙􀚾􀚽􀚘􀚗􀘣􀘢􀘡􀘠􀕦􀕇􀔨􀔉􀕥􀕆􀔧􀔈􀕤􀕅􀔦􀔇􀕣􀕄􀔥􀔆􀕢􀕃􀔤􀔅􀕡􀕂􀔣􀔄􀕠􀕁􀔢􀔃􀕟􀕀􀔡􀔂􀕞􀔿􀔠􀔁􀕝􀔾􀔟􀔀􀕜􀔽􀔞􀓿􀕛􀔼􀔝􀓾􀕚􀔻􀔜􀓽􀕙􀔺􀔛􀓼􀕘􀔹􀔚􀓻􀕗􀔸􀔙􀓺􀕖􀔷􀔘􀓹􀕕􀔶􀔗􀓸􀕔􀔵􀔖􀓷􀕓􀔴􀔕􀓶􀕒􀔳􀔔􀓵􀕑􀔲􀔓􀓴􀕐􀔱􀔒􀓳􀕏􀔰􀔑􀓲􀕎􀔯􀔐􀓱􀕍􀔮􀔏􀓰􀕌􀔭􀔎􀓯􀕋􀔬􀔍􀓮􀕊􀔫􀔌􀓭􀕉􀔪􀔋􀓬􀕈􀔩􀔊􀓫􀑸􀑷􀑴􀑳􀃛􀃚􀁋􀁊􀃙􀃘􀁉􀁈􀃗􀃖􀁇􀁆􀑶􀑵􀑲􀑱􀃕􀃔􀁅􀁄􀃓􀃒􀁃􀁂􀘚􀘙􀘘􀘗􀃑􀃐􀁁􀁀􀃏􀃎􀀿􀀾􀃍􀃌􀀽􀀼􀃋􀃊􀀻􀀺􀃉􀃈􀀹􀀸􀮳􀮲􀮱􀮰􀘖􀘕􀗖􀗕􀘔􀘓􀗔􀗓􀘒􀘑􀗒􀗑􀘐􀘏􀗐􀗏􀘎􀘍􀗎􀗍􀘌􀘋􀗌􀗋􀘊􀘉􀗊􀗉􀘈􀘇􀗈􀗇􀘆􀘅􀗆􀗅􀘄􀘃􀗄􀗃􀘂􀘁􀗂􀗁􀘀􀗿􀗀􀖿􀗾􀗽􀖾􀖽􀗼􀗻􀖼􀖻􀗺􀗹􀖺􀖹􀗸􀗷􀖸􀖷􀗶􀗵􀖶􀖵􀗴􀗳􀖴􀖳􀗲􀗱􀖲􀖱􀗰􀗯􀖰􀖯􀗮􀗭􀖮􀖭􀗬􀗫􀖬􀖫􀗪􀗩􀖪􀖩􀗨􀗧􀖨􀖧􀗦􀗥􀖦􀖥􀗤􀗣􀖤􀖣􀗢􀗡􀖢􀖡􀗠􀗟􀖠􀖟􀗞􀗝􀖞􀖝􀗜􀗛􀖜􀖛􀗚􀗙􀖚􀖙􀗘􀗗􀖘􀖗􀃇􀃆􀀷􀀶􀃅􀃄􀀵􀀴􀃃􀃂􀀳􀀲􀃁􀃀􀀱􀀰􀂿􀂾􀀯􀀮􀂽􀂼􀀭􀀬􀂻􀂺􀀫􀀪􀂹􀂸􀀩􀀨􀂷􀂶􀀧􀀦􀂵􀂴􀀥􀀤􀂳􀂲􀀣􀀢􀂱􀂰􀀡􀀠􀂯􀂮􀀟􀀞􀂭􀂬􀀝􀀜􀂫􀂪􀀛􀀚􀂩􀂨􀀙􀀘􀂧􀂦􀀗􀀖􀂥􀂤􀀕􀀔􀂣􀂢􀀓􀀒􀂡􀂠􀀑􀀐􀂟􀂞􀀏􀀎􀂝􀂜􀀍􀀌􀂛􀂚􀀋􀀊􀂙􀂘􀀉􀀈􀂗􀂖􀀇􀀆􀂕􀂔􀀅􀀄􀕭􀕬􀕨􀕧􀃹􀃸􀁩􀁨􀄥􀓃􀃷􀃶􀁧􀁦􀄤􀓂􀰋􀰊􀰉􀰈􀰇􀰆􀃽􀃼􀁭􀁬􀄧􀓅􀰅􀰄􀰃􀰂􀰁􀰀􀃻􀃺􀁫􀁪􀄦􀓄􀙡􀙠􀖅􀖄􀟸􀟷􀙟􀙞􀙛􀤖􀢤􀖋􀖊􀊯􀅌􀅇􀱽􀱼􀱻􀫟􀫞􀅋􀱸􀱷􀱶􀧜􀧛􀅊􀚄􀚃􀅉􀚂􀚁􀅈􀅀􀅄􀄿􀅃􀅂􀅆􀅁􀅅􀑽􀑼􀑻􀑺􀑹􀒁􀒀􀑿􀑾􀄾􀬑􀧐􀄝􀄜􀂍􀂌􀄻􀄛􀄚􀂋􀂊􀄺􀱗􀱖􀱕􀱔􀱓􀄡􀄠􀂑􀂐􀄽􀱒􀱑􀱐􀱏􀱎􀱍􀄟􀄞􀞸􀂏􀂎􀄼􀄷􀄳􀄶􀄲􀄹􀄵􀄸􀄴􀄏􀄎􀁿􀁾􀄬􀄑􀄐􀂁􀂀􀄭􀱌􀱋􀱊􀱉􀱈􀄙􀄘􀂉􀂈􀄱􀱇􀱆􀱅􀱄􀱃􀄗􀄖􀂇􀂆􀄰􀱂􀱁􀱀􀰿􀰾􀄕􀄔􀂅􀂄􀄯􀰽􀰼􀰻􀰺􀰹􀄓􀄒􀂃􀂂􀄮􀄉􀄈􀁹􀁸􀄩􀄇􀄆􀁷􀁶􀄨􀰕􀰔􀰓􀰒􀰑􀄍􀄌􀁽􀁼􀄫􀰐􀰏􀰎􀰍􀰌􀄋􀄊􀁻􀁺􀄪􀆓􀆒􀆑􀆐􀆏􀆎􀆍􀄁􀄀􀁱􀁰􀆈􀃿􀃾􀁯􀁮􀆇􀰫􀆌􀰪􀆋􀯿􀯾􀯽􀯼􀯻􀄅􀄄􀁵􀁴􀆊􀯺􀯹􀯸􀯷􀯶􀄃􀄂􀁳􀁲􀆉􀞜􀞛􀡯􀡮􀏌􀏋􀃳􀃲􀁣􀁢􀆅􀃱􀃰􀁡􀁠􀆄􀓪􀃫􀃪􀁛􀁚􀆃􀤙􀤘􀡅􀙚􀃩􀃨􀁗􀁖􀆂􀃧􀃦􀁙􀁘􀆁􀃥􀃤􀁕􀁔􀆀􀃣􀃢􀁓􀁒􀅿􀒊􀒉􀞞􀞝􀢄􀢃􀡱􀡰􀏎􀏍􀃡􀃠􀁑􀁐􀅾􀅻􀅺􀘝􀍶􀛺􀢂􀢁􀡭􀡬􀏊􀏉􀃟􀃞􀁏􀁎􀅽􀢀􀡿􀡫􀡪􀏈􀏇􀃝􀃜􀁍􀁌􀅼􀞠􀞟􀘰􀘯􀃯􀃮􀁟􀁞􀣴􀢒􀅎􀄣􀄢􀃭􀃬􀁝􀁜􀅍􀅹􀅸􀢑􀢐􀅷􀅵􀅴􀅳􀤍􀅶􀅱􀥌􀅰􀅯􀅮􀘾􀘽􀥋􀝨􀝧􀅭􀅬􀅫􀅪􀅙􀅘􀅗􀨡􀅖􀅕􀅔􀅓􀓡􀓢􀅐􀅒􀅑􀥊􀵿􀵷􀅏􀘶􀘵􀧲􀧱􀌉􀌈􀜓􀌇􀬉􀧎􀌅􀌄􀌃􀌂􀌁􀌀􀋿􀋾􀋽􀋼􀋻􀋺􀋹􀋸􀋷􀞀􀝿􀋶􀋵􀣩􀋴􀋳􀢽􀋲􀋱􀭞􀥢􀞄􀞃􀛮􀛭􀫯􀫮􀫭􀫬􀢋􀛪􀛩􀛨􀠎􀠍􀖆􀕼􀡧􀡦􀓜􀘟􀓘􀓗􀟧􀠊􀟦􀠉􀟩􀟨􀞓􀞒􀍵􀟗􀞏􀞖􀒱􀚒􀚑􀚐􀒆􀮀􀭿􀖉􀖈􀣬􀖇􀑔􀒹􀒸􀑓􀑒􀑑􀭨􀑐􀑏􀮶􀮵􀯵􀯴􀑎􀑍􀓁􀓀􀑊􀑉􀒿􀒾􀑈􀭮􀭭􀬚􀥠􀟒􀪈􀪇􀲶􀲵􀡺􀡹􀠆􀠅􀒻􀒺􀑇􀑆􀞉􀞈􀙫􀑅􀑄􀑃􀟫􀟪􀜟􀘞􀑂􀮟􀮞􀮌􀮋􀣉􀜋􀑀􀐿􀐾􀡔􀡓􀳄􀳃􀯳􀯲􀯱􀯰􀯯􀯮􀯭􀙯􀙮􀐸􀐷􀲯􀲮􀟯􀟮􀟱􀟰􀤼􀤻􀦃􀦂􀤺􀤹􀚀􀙿􀙾􀙽􀬂􀬁􀖔􀖓􀝱􀝰􀊂􀊁􀊀􀉿􀉾􀉽􀉼􀉻􀪓􀞇􀧁􀦿􀜣􀝽􀝼􀝻􀳿􀳾􀪣􀪢􀝤􀝣􀝢􀝦􀝥􀨞􀨝􀨜􀨛􀨚􀨙􀨘􀨗􀨖􀨕􀨔􀨓􀨒􀨑􀨐􀨏􀨎􀨍􀨌􀨋􀨊􀨉􀨈􀨇􀩻􀩺􀩹􀩸􀨆􀨅􀨄􀨃􀨂􀨁􀨀􀧿􀧾􀧽􀧼􀨲􀫄􀦕􀫃􀦔􀫂􀦓􀫁􀦒􀛹􀛸􀯛􀱨􀣔􀭄􀐱􀐰􀐯􀐮􀐭􀡒􀡑􀐬􀐫􀐪􀐩􀐣􀙔􀐢􀐡􀧏􀐠􀙑􀙐􀙓􀙒􀐟􀐞􀰴􀰳􀐝􀐜􀳌􀳋􀳈􀳇􀘸􀐛􀐚􀳴􀬨􀐙􀐘􀟲􀰗􀐗􀌆􀬱􀣱􀜊􀵔􀲊􀙨􀞢􀙧􀞡􀙦􀩲􀐖􀐕􀐔􀐓􀐒􀐑􀐐􀐏􀐌􀐋􀩷􀩶􀐊􀐉􀐈􀐇􀯇􀰙􀫝􀐆􀐅􀭝􀭜􀭛􀭚􀭙􀭘􀲴􀲳􀏺􀏹􀏴􀏳􀏲􀏱􀏮􀏭􀣵􀑰􀑯􀏬􀏫􀏪􀏩􀤿􀥀􀤾􀤽􀏨􀏧􀏦􀏥􀏤􀏣􀧍􀧌􀧋􀧊􀧉􀧈􀘮􀏢􀏡􀯬􀯫􀡘􀡗􀕳􀕲􀕯􀕮􀕱􀕰􀘜􀏠􀕸􀏟􀏝􀤯􀣚􀢌􀤁􀤀􀣑􀣰􀦍􀣿􀣾􀏞􀥃􀏜􀱧􀱦􀱥􀱤􀰲􀰱􀏛􀏚􀵛􀵚􀏘􀏗􀏖􀏕􀏔􀏓􀏒􀏑􀥂􀥁􀨺􀢰􀢯􀢮􀢭􀢬􀢫􀢪􀞲􀪫􀲲􀲱􀏆􀏅􀪪􀪩􀪨􀏐􀏏􀤷􀤶􀥟􀥞􀭶􀭵􀭴􀭳􀥝􀨩􀨱􀨨􀴊􀤵􀤴􀤳􀲏􀮄􀮃􀡢􀎾􀎽􀎼􀥄􀎻􀎺􀏀􀎿􀎹􀘱􀖂􀦉􀦈􀦆􀦅􀨸􀥧􀙌􀎸􀝑􀝐􀎷􀎶􀙜􀥳􀥲􀯕􀯔􀌝􀌜􀌛􀌚􀓑􀓐􀓏􀓎􀣟􀣞􀣝􀣜􀠲􀠱􀦛􀦚􀙪􀙩􀱭􀱬􀡥􀜝􀲜􀲛􀝇􀝆􀜜􀜛􀝉􀝈􀝅􀝄􀝃􀡞􀭰􀭯􀙙􀙘􀟑􀑭􀫼􀫻􀫺􀫹􀭲􀭱􀑨􀑧􀠴􀠳􀖀􀱝􀱜􀱛􀭺􀭹􀙲􀱚􀱙􀱘􀭸􀭷􀙱􀰭􀖒􀌙􀑢􀑡􀯍􀯌􀰰􀰯􀡴􀨫􀪕􀪔􀟶􀟵􀝏􀝎􀟴􀮎􀟳􀮍􀟣􀟢􀲎􀲍􀪷􀲌􀲋􀟥􀠦􀨶􀢷􀵅􀵄􀫋􀟤􀮖􀥔􀥓􀮕􀟠􀟟􀫫􀫪􀫩􀫨􀴐􀫧􀮔􀯖􀟞􀬬􀬫􀵒􀵑􀴓􀴒􀴑􀐶􀨵􀡇􀴏􀟜􀨴􀡆􀴎􀟝􀪳􀪴􀢺􀑝􀦰􀦯􀪰􀪯􀬩􀟛􀨳􀧘􀪬􀪱􀦮􀦱􀪲􀥺􀙗􀨧􀨦􀢹􀲰􀫑􀵪􀵩􀵨􀒷􀎵􀦾􀦽􀎴􀎳􀒶􀎲􀢸􀫦􀫥􀣂􀑠􀎱􀎰􀎯􀎮􀴌􀢇􀢆􀢅􀎭􀎬􀙋􀙊􀎫􀙉􀜈􀜇􀎪􀎩􀎨􀒵􀒴􀎧􀎦􀙥􀙈􀙇􀟖􀟕􀑚􀑙􀎥􀎤􀎣􀎢􀞚􀞙􀢴􀢳􀢲􀢱􀢉􀢈􀡝􀡜􀢶􀢵􀒳􀒲􀎡􀎠􀝕􀝔􀝓􀝒􀮆􀮅􀟼􀟻􀤩􀤨􀒽􀒼􀥇􀥆􀎟􀎞􀠀􀤛􀤚􀯚􀯙􀢠􀢟􀯢􀯡􀎝􀎜􀪌􀪋􀪊􀪿􀪟􀪞􀪾􀎛􀎚􀝾􀤐􀤏􀤮􀤭􀤋􀤊􀎙􀎘􀎗􀙅􀙄􀎖􀎕􀟃􀟂􀟁􀟀􀎔􀎓􀣷􀣶􀎒􀎑􀎐􀟽􀎏􀫐􀧮􀧭􀧬􀧫􀧪􀧩􀧨􀧧􀧦􀧥􀧤􀧣􀧰􀠕􀎌􀬧􀍾􀓧􀓓􀍽􀍼􀬗􀪑􀪐􀍻􀍺􀍴􀍳􀜎􀜍􀍲􀍱􀟿􀟾􀦡􀦠􀒰􀒯􀍰􀍯􀍮􀍭􀍬􀍫􀒮􀒭􀍪􀍩􀍨􀍧􀍦􀍥􀒬􀒫􀍤􀍣􀠪􀠩􀍢􀍡􀍠􀞷􀉈􀫏􀫎􀙤􀥏􀥎􀣌􀣋􀍟􀣀􀢿􀬸􀢾􀣫􀣪􀍞􀍝􀫚􀫙􀍜􀍛􀍚􀍙􀦘􀦗􀍘􀍗􀍖􀍕􀍔􀍓􀍒􀍑􀍐􀍏􀮻􀮺􀜯􀜮􀍎􀍍􀍌􀍋􀍊􀍉􀙰􀜆􀜅􀍈􀒨􀒧􀍇􀍆􀍅􀍄􀍃􀍂􀍁􀍀􀬜􀬛􀖏􀖎􀒦􀒥􀌿􀌾􀘲􀒤􀌽􀌼􀌹􀌸􀱱􀱰􀱯􀱮􀕻􀕺􀬅􀬄􀌷􀌶􀌵􀌴􀌳􀌲􀌱􀌰􀌯􀌮􀌭􀌬􀌫􀌪􀌩􀌨􀡚􀡙􀜄􀜃􀌧􀌦􀌥􀌤􀝂􀝁􀌣􀌢􀢘􀢗􀌡􀌠􀌟􀌞􀞋􀝌􀌘􀌗􀌖􀌕􀙺􀙹􀙸􀙷􀢖􀢕􀙶􀙵􀙴􀙳􀙀􀘿􀒟􀒞􀌔􀌓􀢔􀢓􀌒􀌑􀌐􀌏􀌎􀌍􀌌􀌋􀦪􀦩􀦀􀥿􀨰􀨯􀦭􀨭􀦧􀋰􀋯􀜀􀛿􀋮􀋭􀒚􀒙􀒘􀒗􀘴􀘳􀋬􀋫􀋪􀋩􀋨􀋧􀋦􀋥􀦬􀦫􀋤􀋣􀋢􀋡􀝗􀝖􀋠􀋟􀋞􀋝􀋜􀋛􀋚􀋙􀋘􀋗􀋖􀋕􀋔􀋓􀘭􀘬􀋒􀋑􀤕􀤔􀋐􀋏􀋎􀋍􀋌􀋋􀋊􀋉􀑮􀋈􀋇􀠨􀠧􀋆􀋅􀋄􀋃􀋂􀋁􀋀􀧢􀧡􀲘􀲗􀲖􀲕􀛥􀞽􀥵􀥴􀊻􀊺􀊷􀊶􀊹􀊸􀊵􀊴􀊿􀒄􀊾􀒅􀊽􀒃􀊼􀒂􀝞􀝝􀟋􀟊􀟉􀟈􀚖􀚕􀛤􀛣􀟐􀟏􀣥􀣤􀏄􀏃􀑌􀑋􀪶􀪵􀫴􀩢􀣯􀣮􀭉􀧑􀓔􀧻􀧺􀕵􀕴􀣧􀣦􀪛􀪚􀚔􀚓􀂓􀂒􀮷􀲡􀲠􀲟􀲞􀧷􀧶􀝷􀝶􀢊􀕫􀕪􀣽􀫲􀜞􀧙􀧒􀓞􀕩􀍷􀝜􀪗􀪖􀀃􀀂􀀁􀀀􀫱􀫰􀊳􀊲􀒪􀒩􀊱􀊰􀤎􀭥􀥩􀊮􀊭􀊬􀒓􀒒􀊫􀫊􀘩􀘨􀘧􀘦􀘥􀘤􀎊􀎉􀎈􀎇􀎆􀎅􀎄􀎃􀎂􀎁􀎀􀍿􀣁􀑫􀫀􀑬􀑪􀰮􀊪􀊩􀊨􀥒􀥑􀊧􀊦􀊥􀊤􀑞􀌊􀫡􀫠􀊣􀊢􀊡􀊠􀬳􀬲􀵐􀵏􀯠􀵎􀵍􀊟􀵌􀵋􀊞􀵊􀵉􀊝􀑘􀑗􀑖􀢣􀣊􀢢􀢡􀆦􀆥􀩫􀩪􀩩􀩨􀊔􀊓􀊒􀊑􀊐􀊏􀊎􀊍􀊌􀊋􀊊􀊉􀊈􀊇􀢚􀢙􀜫􀜪􀛷􀛶􀊜􀊛􀊘􀊗􀊆􀊅􀪆􀪅􀊚􀊙􀊖􀊕􀊄􀊃􀈁􀈀􀠒􀠑􀇿􀇾􀇽􀇼􀇻􀇺􀟇􀟆􀩇􀩆􀩅􀩄􀧹􀧸􀬏􀬎􀙣􀙢􀦼􀦻􀦺􀦹􀦸􀦷􀦶􀦵􀦴􀦳􀦲􀇹􀇸􀞿􀞾􀚉􀓛􀓚􀤲􀓙􀛧􀛦􀚈􀇷􀚆􀇶􀚇􀇵􀚅􀇴􀞺􀞹􀣭􀓖􀫒􀇳􀮴􀣡􀣠􀫍􀱢􀯪􀭈􀭇􀭆􀮐􀭅􀫌􀇰􀇲􀇱􀇯􀇮􀇭􀙭􀙬􀙖􀙕􀵀􀴿􀴾􀇬􀇫􀦜􀇪􀇩􀇨􀇧􀇥􀇦􀇤􀇣􀇢􀇡􀇠􀇝􀇜􀇛􀇚􀇙􀇘􀇗􀇖􀇕􀇔􀇟􀇞􀇓􀇒􀇑􀇐􀇏􀇎􀇍􀇌􀇋􀇊􀇉􀇈􀇇􀇆􀇅􀇄􀇃􀇂􀇁􀇀􀆿􀫸􀆾􀆽􀖃􀆼􀆻􀆺􀆹􀆸􀆷􀆶􀆵􀆴􀆳􀆲􀆱􀆮􀆭􀆬􀆫􀤆􀆪􀝯􀯝􀥦􀥥􀥤􀥣􀆨􀪒􀜚􀣨􀯆􀆧􀆢􀆡􀆞􀆝􀆜􀆛􀆚􀆙􀆘􀆗􀆖􀆕􀪂􀪁􀪀􀩿􀆔􀦏􀦎􀓦􀓥􀏼􀏻􀉺􀉹􀉸􀉷􀭾􀭽􀉶􀉵􀉴􀉳􀉲􀉱􀉰􀉯􀉮􀉭􀝋􀝊􀠄􀠃􀉬􀉫􀪽􀪼􀜘􀜗􀜖􀜕􀓤􀓣􀯩􀯨􀯧􀯓􀯒􀯑􀉪􀉩􀉨􀉤􀥕􀒡􀒠􀉣􀥪􀒖􀢏􀒕􀒔􀉢􀪄􀪃􀫔􀫓􀛯􀟎􀟍􀉡􀉠􀉟􀉞􀤡􀤠􀫘􀫗􀫖􀫕􀤟􀤞􀬓􀬒􀥅􀤦􀉝􀉜􀉛􀉚􀰩􀰨􀒑􀉙􀰧􀰦􀒐􀉘􀰥􀰤􀰣􀰢􀉗􀉖􀉕􀉔􀰡􀰠􀰟􀰞􀉓􀉒􀉑􀉐􀰝􀰜􀰛􀰚􀉏􀉎􀉍􀉌􀮝􀧞􀉋􀉊􀒏􀒎􀉉􀣙􀓕􀧵􀕹􀪏􀩼􀩳􀦌􀥜􀳽􀳼􀦋􀉇􀥨􀉆􀦊􀉅􀉄􀫷􀫶􀫵􀉃􀉂􀉁􀤧􀉀􀈿􀈾􀈽􀈼􀈻􀢎􀢍􀩵􀩴􀩛􀩚􀣘􀣗􀈺􀈹􀈸􀈷􀈶􀈵􀈴􀈳􀈲􀈱􀈰􀈯􀈮􀈭􀨥􀨤􀤅􀤄􀨪􀥾􀤝􀤜􀩯􀩮􀪺􀪹􀩭􀩬􀩕􀩑􀩔􀩐􀩓􀩏􀩒􀩎􀤃􀤂􀈬􀈫􀈪􀈩􀈨􀈧􀈦􀈥􀒍􀒌􀈤􀈣􀈢􀈡􀈠􀈟􀬕􀬔􀤱􀤰􀣎􀣍􀣖􀣕􀈞􀈝􀧇􀧆􀈜􀈛􀈚􀈙􀈘􀈗􀈖􀈕􀜨􀜧􀈔􀈓􀈒􀈑􀣳􀓩􀧚􀉧􀉦􀉥􀒋􀈐􀦇􀤑􀓨􀈏􀈎􀈍􀈌􀈋􀈊􀈉􀈈􀈇􀈆􀈅􀈄􀈃􀈂"

    /// Symbol codes obtained from `SF Symbols 2.app` by sorting by natural order, secting all, and Edit > Copy Symbol Name
    private static let symbolNames = """
        applelogo
        50.square.fill
        50.square
        50.circle.fill
        50.circle
        49.square.fill
        49.square
        49.circle.fill
        49.circle
        48.square.fill
        48.square
        48.circle.fill
        48.circle
        47.square.fill
        47.square
        47.circle.fill
        47.circle
        46.square.fill
        46.square
        46.circle.fill
        46.circle
        45.square.fill
        45.square
        45.circle.fill
        45.circle
        44.square.fill
        44.square
        44.circle.fill
        44.circle
        43.square.fill
        43.square
        43.circle.fill
        43.circle
        42.square.fill
        42.square
        42.circle.fill
        42.circle
        41.square.fill
        41.square
        41.circle.fill
        41.circle
        40.square.fill
        40.square
        40.circle.fill
        40.circle
        39.square.fill
        39.square
        39.circle.fill
        39.circle
        38.square.fill
        38.square
        38.circle.fill
        38.circle
        37.square.fill
        37.square
        37.circle.fill
        37.circle
        36.square.fill
        36.square
        36.circle.fill
        36.circle
        35.square.fill
        35.square
        35.circle.fill
        35.circle
        34.square.fill
        34.square
        34.circle.fill
        34.circle
        33.square.fill
        33.square
        33.circle.fill
        33.circle
        32.square.fill
        32.square
        32.circle.fill
        32.circle
        31.square.fill
        31.square
        31.circle.fill
        31.circle
        30.square.fill
        30.square
        30.circle.fill
        30.circle
        29.square.fill
        29.square
        29.circle.fill
        29.circle
        28.square.fill
        28.square
        28.circle.fill
        28.circle
        27.square.fill
        27.square
        27.circle.fill
        27.circle
        26.square.fill
        26.square
        26.circle.fill
        26.circle
        25.square.fill
        25.square
        25.circle.fill
        25.circle
        24.square.fill
        24.square
        24.circle.fill
        24.circle
        23.square.fill
        23.square
        23.circle.fill
        23.circle
        22.square.fill
        22.square
        22.circle.fill
        22.circle
        21.square.fill
        21.square
        21.circle.fill
        21.circle
        20.square.fill
        20.square
        20.circle.fill
        20.circle
        19.square.fill
        19.square
        19.circle.fill
        19.circle
        18.square.fill
        18.square
        18.circle.fill
        18.circle
        17.square.fill
        17.square
        17.circle.fill
        17.circle
        16.square.fill
        16.square
        16.circle.fill
        16.circle
        15.square.fill
        15.square
        15.circle.fill
        15.circle
        14.square.fill
        14.square
        14.circle.fill
        14.circle
        13.square.fill
        13.square
        13.circle.fill
        13.circle
        12.square.fill
        12.square
        12.circle.fill
        12.circle
        11.square.fill
        11.square
        11.circle.fill
        11.circle
        10.square.fill
        10.square
        10.circle.fill
        10.circle
        09.square.fill
        09.square
        09.circle.fill
        09.circle
        08.square.fill
        08.square
        08.circle.fill
        08.circle
        07.square.fill
        07.square
        07.circle.fill
        07.circle
        06.square.fill
        06.square
        06.circle.fill
        06.circle
        05.square.fill
        05.square
        05.circle.fill
        05.circle
        04.square.fill
        04.square
        04.circle.fill
        04.circle
        03.square.fill
        03.square
        03.circle.fill
        03.circle
        02.square.fill
        02.square
        02.circle.fill
        02.circle
        01.square.fill
        01.square
        01.circle.fill
        01.circle
        00.square.fill
        00.square
        00.circle.fill
        00.circle
        9.alt.square.fill
        9.alt.square
        9.alt.circle.fill
        9.alt.circle
        9.square.fill
        9.square
        9.circle.fill
        9.circle
        8.square.fill
        8.square
        8.circle.fill
        8.circle
        7.square.fill
        7.square
        7.circle.fill
        7.circle
        6.alt.square.fill
        6.alt.square
        6.alt.circle.fill
        6.alt.circle
        6.square.fill
        6.square
        6.circle.fill
        6.circle
        5.square.fill
        5.square
        5.circle.fill
        5.circle
        4.alt.square.fill
        4.alt.square
        4.alt.circle.fill
        4.alt.circle
        4.square.fill
        4.square
        4.circle.fill
        4.circle
        3.square.fill
        3.square
        3.circle.fill
        3.circle
        2.square.fill
        2.square
        2.circle.fill
        2.circle
        1.square.fill
        1.square
        1.circle.fill
        1.circle
        0.square.fill
        0.square
        0.circle.fill
        0.circle
        brazilianrealsign.square.fill
        brazilianrealsign.square
        brazilianrealsign.circle.fill
        brazilianrealsign.circle
        bitcoinsign.square.fill
        bitcoinsign.square
        bitcoinsign.circle.fill
        bitcoinsign.circle
        larisign.square.fill
        larisign.square
        larisign.circle.fill
        larisign.circle
        bahtsign.square.fill
        bahtsign.square
        bahtsign.circle.fill
        bahtsign.circle
        rupeesign.square.fill
        rupeesign.square
        rupeesign.circle.fill
        rupeesign.circle
        manatsign.square.fill
        manatsign.square
        manatsign.circle.fill
        manatsign.circle
        shekelsign.square.fill
        shekelsign.square
        shekelsign.circle.fill
        shekelsign.circle
        millsign.square.fill
        millsign.square
        millsign.circle.fill
        millsign.circle
        tugriksign.square.fill
        tugriksign.square
        tugriksign.circle.fill
        tugriksign.circle
        cruzeirosign.square.fill
        cruzeirosign.square
        cruzeirosign.circle.fill
        cruzeirosign.circle
        cedisign.square.fill
        cedisign.square
        cedisign.circle.fill
        cedisign.circle
        coloncurrencysign.square.fill
        coloncurrencysign.square
        coloncurrencysign.circle.fill
        coloncurrencysign.circle
        guaranisign.square.fill
        guaranisign.square
        guaranisign.circle.fill
        guaranisign.circle
        nairasign.square.fill
        nairasign.square
        nairasign.circle.fill
        nairasign.circle
        hryvniasign.square.fill
        hryvniasign.square
        hryvniasign.circle.fill
        hryvniasign.circle
        australsign.square.fill
        australsign.square
        australsign.circle.fill
        australsign.circle
        lirasign.square.fill
        lirasign.square
        lirasign.circle.fill
        lirasign.circle
        wonsign.square.fill
        wonsign.square
        wonsign.circle.fill
        wonsign.circle
        kipsign.square.fill
        kipsign.square
        kipsign.circle.fill
        kipsign.circle
        pesosign.square.fill
        pesosign.square
        pesosign.circle.fill
        pesosign.circle
        pesetasign.square.fill
        pesetasign.square
        pesetasign.circle.fill
        pesetasign.circle
        tengesign.square.fill
        tengesign.square
        tengesign.circle.fill
        tengesign.circle
        indianrupeesign.square.fill
        indianrupeesign.square
        indianrupeesign.circle.fill
        indianrupeesign.circle
        dongsign.square.fill
        dongsign.square
        dongsign.circle.fill
        dongsign.circle
        eurosign.square.fill
        eurosign.square
        eurosign.circle.fill
        eurosign.circle
        rublesign.square.fill
        rublesign.square
        rublesign.circle.fill
        rublesign.circle
        turkishlirasign.square.fill
        turkishlirasign.square
        turkishlirasign.circle.fill
        turkishlirasign.circle
        florinsign.square.fill
        florinsign.square
        florinsign.circle.fill
        florinsign.circle
        francsign.square.fill
        francsign.square
        francsign.circle.fill
        francsign.circle
        sterlingsign.square.fill
        sterlingsign.square
        sterlingsign.circle.fill
        sterlingsign.circle
        yensign.square.fill
        yensign.square
        yensign.circle.fill
        yensign.circle
        centsign.square.fill
        centsign.square
        centsign.circle.fill
        centsign.circle
        dollarsign.square.fill
        dollarsign.square
        dollarsign.circle.fill
        dollarsign.circle
        z.square.fill
        z.square
        z.circle.fill
        z.circle
        y.square.fill
        y.square
        y.circle.fill
        y.circle
        x.square.fill
        x.square
        x.circle.fill
        x.circle
        w.square.fill
        w.square
        w.circle.fill
        w.circle
        v.square.fill
        v.square
        v.circle.fill
        v.circle
        u.square.fill
        u.square
        u.circle.fill
        u.circle
        t.square.fill
        t.square
        t.circle.fill
        t.circle
        s.square.fill
        s.square
        s.circle.fill
        s.circle
        r.square.fill
        r.square
        r.circle.fill
        r.circle
        q.square.fill
        q.square
        q.circle.fill
        q.circle
        p.square.fill
        p.square
        p.circle.fill
        p.circle
        o.square.fill
        o.square
        o.circle.fill
        o.circle
        n.square.fill
        n.square
        n.circle.fill
        n.circle
        m.square.fill
        m.square
        m.circle.fill
        m.circle
        l.square.fill
        l.square
        l.circle.fill
        l.circle
        k.square.fill
        k.square
        k.circle.fill
        k.circle
        j.square.fill
        j.square
        j.circle.fill
        j.circle
        i.square.fill
        i.square
        i.circle.fill
        i.circle
        h.square.fill
        h.square
        h.circle.fill
        h.circle
        g.square.fill
        g.square
        g.circle.fill
        g.circle
        f.square.fill
        f.square
        f.circle.fill
        f.circle
        e.square.fill
        e.square
        e.circle.fill
        e.circle
        d.square.fill
        d.square
        d.circle.fill
        d.circle
        c.square.fill
        c.square
        c.circle.fill
        c.circle
        b.square.fill
        b.square
        b.circle.fill
        b.circle
        a.square.fill
        a.square
        a.circle.fill
        a.circle
        asterisk.circle.fill
        asterisk.circle
        slash.circle.fill
        slash.circle
        arrowtriangle.down.square.fill
        arrowtriangle.down.square
        arrowtriangle.down.circle.fill
        arrowtriangle.down.circle
        arrowtriangle.down.fill
        arrowtriangle.down
        arrowtriangle.up.square.fill
        arrowtriangle.up.square
        arrowtriangle.up.circle.fill
        arrowtriangle.up.circle
        arrowtriangle.up.fill
        arrowtriangle.up
        arrowtriangle.forward.square.fill
        arrowtriangle.forward.square
        arrowtriangle.forward.circle.fill
        arrowtriangle.forward.circle
        arrowtriangle.forward.fill
        arrowtriangle.forward
        arrowtriangle.right.square.fill
        arrowtriangle.right.square
        arrowtriangle.right.circle.fill
        arrowtriangle.right.circle
        arrowtriangle.right.fill
        arrowtriangle.right
        arrowtriangle.backward.square.fill
        arrowtriangle.backward.square
        arrowtriangle.backward.circle.fill
        arrowtriangle.backward.circle
        arrowtriangle.backward.fill
        arrowtriangle.backward
        arrowtriangle.left.square.fill
        arrowtriangle.left.square
        arrowtriangle.left.circle.fill
        arrowtriangle.left.circle
        arrowtriangle.left.fill
        arrowtriangle.left
        arrow.triangle.pull
        arrow.triangle.branch
        arrow.triangle.swap
        arrow.triangle.merge
        arrow.triangle.turn.up.right.circle.fill
        arrow.triangle.turn.up.right.circle
        arrow.triangle.turn.up.right.diamond.fill
        arrow.triangle.turn.up.right.diamond
        arrow.3.trianglepath
        arrow.triangle.capsulepath
        exclamationmark.arrow.triangle.2.circlepath
        arrow.triangle.2.circlepath.circle.fill
        arrow.triangle.2.circlepath.circle
        arrow.triangle.2.circlepath
        arrow.2.squarepath
        return
        arrow.down.forward.and.arrow.up.backward.circle.fill
        arrow.down.forward.and.arrow.up.backward.circle
        arrow.down.forward.and.arrow.up.backward
        arrow.down.right.and.arrow.up.left.circle.fill
        arrow.down.right.and.arrow.up.left.circle
        arrow.down.right.and.arrow.up.left
        arrow.up.backward.and.arrow.down.forward.circle.fill
        arrow.up.backward.and.arrow.down.forward.circle
        arrow.up.backward.and.arrow.down.forward
        arrow.up.left.and.arrow.down.right.circle.fill
        arrow.up.left.and.arrow.down.right.circle
        arrow.up.left.and.arrow.down.right
        arrow.counterclockwise.circle.fill
        arrow.counterclockwise.circle
        arrow.counterclockwise
        arrow.clockwise.circle.fill
        arrow.clockwise.circle
        arrow.clockwise
        arrow.down.to.line
        arrow.down.to.line.alt
        arrow.up.to.line
        arrow.up.to.line.alt
        arrow.right.to.line
        arrow.right.to.line.alt
        arrow.left.to.line
        arrow.left.to.line.alt
        arrow.up.and.down.square.fill
        arrow.up.and.down.square
        arrow.up.and.down.circle.fill
        arrow.up.and.down.circle
        arrow.up.and.down
        arrow.left.and.right.square.fill
        arrow.left.and.right.square
        arrow.left.and.right.circle.fill
        arrow.left.and.right.circle
        arrow.left.and.right
        arrow.up.left.and.down.right.and.arrow.up.right.and.down.left
        arrow.up.and.down.and.arrow.left.and.right
        arrow.uturn.down.square.fill
        arrow.uturn.down.square
        arrow.uturn.down.circle.fill
        arrow.uturn.down.circle
        arrow.uturn.down
        arrow.uturn.up.square.fill
        arrow.uturn.up.square
        arrow.uturn.up.circle.fill
        arrow.uturn.up.circle
        arrow.uturn.up
        arrow.uturn.forward.square.fill
        arrow.uturn.forward.square
        arrow.uturn.forward.circle.fill
        arrow.uturn.forward.circle
        arrow.uturn.forward
        arrow.uturn.right.square.fill
        arrow.uturn.right.square
        arrow.uturn.right.circle.fill
        arrow.uturn.right.circle
        arrow.uturn.right
        arrow.uturn.backward.square.fill
        arrow.uturn.backward.square
        arrow.uturn.backward.circle.badge.ellipsis
        arrow.uturn.backward.circle.fill
        arrow.uturn.backward.circle
        arrow.uturn.backward
        arrow.uturn.left.square.fill
        arrow.uturn.left.square
        arrow.uturn.left.circle.badge.ellipsis
        arrow.uturn.left.circle.fill
        arrow.uturn.left.circle
        arrow.uturn.left
        arrow.turn.left.down
        arrow.turn.right.down
        arrow.turn.left.up
        arrow.turn.right.up
        arrow.turn.up.right
        arrow.turn.down.right
        arrow.turn.up.left
        arrow.turn.down.left
        arrow.up.arrow.down.square.fill
        arrow.up.arrow.down.square
        arrow.up.arrow.down.circle.fill
        arrow.up.arrow.down.circle
        arrow.up.arrow.down
        arrow.left.arrow.right.square.fill
        arrow.left.arrow.right.square
        arrow.left.arrow.right.circle.fill
        arrow.left.arrow.right.circle
        arrow.left.arrow.right
        arrow.down.forward.square.fill
        arrow.down.forward.square
        arrow.down.forward.circle.fill
        arrow.down.forward.circle
        arrow.down.forward
        arrow.down.right.square.fill
        arrow.down.right.square
        arrow.down.right.circle.fill
        arrow.down.right.circle
        arrow.down.right
        arrow.down.backward.square.fill
        arrow.down.backward.square
        arrow.down.backward.circle.fill
        arrow.down.backward.circle
        arrow.down.backward
        arrow.down.left.square.fill
        arrow.down.left.square
        arrow.down.left.circle.fill
        arrow.down.left.circle
        arrow.down.left
        arrow.up.forward.square.fill
        arrow.up.forward.square
        arrow.up.forward.circle.fill
        arrow.up.forward.circle
        arrow.up.forward
        arrow.up.right.square.fill
        arrow.up.right.square
        arrow.up.right.circle.fill
        arrow.up.right.circle
        arrow.up.right
        arrow.up.backward.square.fill
        arrow.up.backward.square
        arrow.up.backward.circle.fill
        arrow.up.backward.circle
        arrow.up.backward
        arrow.up.left.square.fill
        arrow.up.left.square
        arrow.up.left.circle.fill
        arrow.up.left.circle
        arrow.up.left
        arrow.down.square.fill
        arrow.down.square
        arrow.down.circle.fill
        arrow.down.circle
        arrow.down
        arrow.up.square.fill
        arrow.up.square
        arrow.up.circle.fill
        arrow.up.circle
        arrow.up
        arrow.forward.square.fill
        arrow.forward.square
        arrow.forward.circle.fill
        arrow.forward.circle
        arrow.forward
        arrow.right.square.fill
        arrow.right.square
        arrow.right.circle.fill
        arrow.right.circle
        arrow.right
        arrow.backward.square.fill
        arrow.backward.square
        arrow.backward.circle.fill
        arrow.backward.circle
        arrow.backward
        arrow.left.square.fill
        arrow.left.square
        arrow.left.circle.fill
        arrow.left.circle
        arrow.left
        chevron.compact.right
        chevron.compact.left
        chevron.compact.down
        chevron.compact.up
        chevron.up.chevron.down
        projective
        control
        chevron.down.square.fill
        chevron.down.square
        chevron.down.circle.fill
        chevron.down.circle
        chevron.down
        chevron.up.square.fill
        chevron.up.square
        chevron.up.circle.fill
        chevron.up.circle
        chevron.up
        chevron.forward.2
        chevron.right.2
        chevron.backward.2
        chevron.left.2
        chevron.forward.square.fill
        chevron.forward.square
        chevron.forward.circle.fill
        chevron.forward.circle
        chevron.forward
        chevron.right.square.fill
        chevron.right.square
        chevron.right.circle.fill
        chevron.right.circle
        chevron.right
        chevron.backward.square.fill
        chevron.backward.square
        chevron.backward.circle.fill
        chevron.backward.circle
        chevron.backward
        chevron.left.square.fill
        chevron.left.square
        chevron.left.circle.fill
        chevron.left.circle
        chevron.left
        checkmark.shield.fill
        checkmark.shield
        checkmark.rectangle.portrait.fill
        checkmark.rectangle.portrait
        checkmark.rectangle.fill
        checkmark.rectangle
        checkmark.square.fill
        checkmark.square
        checkmark.circle.fill
        checkmark.circle
        checkmark
        xmark.square.fill
        xmark.square
        xmark.circle.fill
        xmark.circle
        xmark
        x.squareroot
        number.square.fill
        number.square
        number.circle.fill
        number.circle
        number
        curlybraces.square.fill
        curlybraces.square
        curlybraces
        chevron.left.slash.chevron.right
        greaterthan.square.fill
        greaterthan.square
        greaterthan.circle.fill
        greaterthan.circle
        greaterthan
        lessthan.square.fill
        lessthan.square
        lessthan.circle.fill
        lessthan.circle
        lessthan
        equal.square.fill
        equal.square
        equal.circle.fill
        equal.circle
        equal
        divide.square.fill
        divide.square
        divide.circle.fill
        divide.circle
        divide
        xmark.octagon.fill
        xmark.octagon
        xmark.shield.fill
        xmark.shield
        xmark.diamond.fill
        xmark.diamond
        xmark.rectangle.portrait.fill
        xmark.rectangle.portrait
        xmark.rectangle.fill
        xmark.rectangle
        multiply.square.fill
        multiply.square
        multiply.circle.fill
        multiply.circle
        multiply
        minus.slash.plus
        plus.slash.minus
        plusminus.circle.fill
        plusminus.circle
        plusminus
        minus.diamond.fill
        minus.diamond
        minus.rectangle.portrait.fill
        minus.rectangle.portrait
        minus.rectangle.fill
        minus.rectangle
        minus.square.fill
        minus.square
        minus.circle.fill
        minus.circle
        minus
        plus.diamond.fill
        plus.diamond
        plus.rectangle.portrait.fill
        plus.rectangle.portrait
        plus.rectangle.fill
        plus.rectangle
        plus.square.fill
        plus.square
        plus.circle.fill
        plus.circle
        plus
        exclamationmark.shield.fill
        exclamationmark.shield
        exclamationmark.octagon.fill
        exclamationmark.octagon
        exclamationmark.square.fill
        exclamationmark.square
        exclamationmark.circle.fill
        exclamationmark.circle
        exclamationmark.3
        exclamationmark.2
        exclamationmark
        questionmark.diamond.fill
        questionmark.diamond
        questionmark.square.fill
        questionmark.square
        questionmark.circle.fill
        questionmark.circle
        questionmark
        at.badge.minus
        at.badge.plus
        at.circle.fill
        at.circle
        at
        info.circle.fill
        info.circle
        info
        a.magnify
        textbox
        textformat.123
        fn
        textformat.abc.dottedunderline
        textformat.abc
        function
        percent
        sum
        k
        f.cursive.circle.fill
        f.cursive.circle
        f.cursive
        fx
        text.cursor
        view.3d
        view.2d
        bold.underline
        bold.italic.underline
        shadow
        strikethrough
        underline
        italic
        bold
        textformat.subscript
        textformat.superscript
        textformat.size
        textformat
        textformat.alt
        abc
        textformat.size.larger
        textformat.size.smaller
        character
        line.horizontal.2.decrease.circle.fill
        line.horizontal.2.decrease.circle
        line.horizontal.3.circle.fill
        line.horizontal.3.circle
        line.horizontal.3.decrease.circle.fill
        line.horizontal.3.decrease.circle
        line.horizontal.3.decrease
        line.horizontal.3
        list.and.film
        text.redaction
        text.justifyright
        text.justifyleft
        text.justify
        text.alignright
        text.aligncenter
        text.alignleft
        text.quote
        text.append
        text.insert
        text.badge.star
        text.badge.xmark
        text.badge.checkmark
        text.badge.minus
        text.badge.plus
        list.bullet.below.rectangle
        increase.quotelevel
        decrease.quotelevel
        decrease.indent
        increase.indent
        list.star
        list.number
        list.bullet.indent
        list.triangle
        list.bullet
        list.dash
        square.fill.text.grid.1x2
        fiberchannel
        lightbulb.slash.fill
        lightbulb.slash
        lightbulb.fill
        lightbulb
        bolt.fill.batteryblock.fill
        bolt.fill.batteryblock
        minus.plus.batteryblock.fill
        minus.plus.batteryblock
        battery.100.bolt
        battery.0
        battery.25
        battery.100
        binoculars.fill
        binoculars
        eyeglasses
        recordingtape
        lifepreserver.fill
        lifepreserver
        burn
        grid.circle.fill
        grid.circle
        grid
        arrowtriangle.right.fill.and.line.vertical.and.arrowtriangle.left.fill
        arrowtriangle.right.and.line.vertical.and.arrowtriangle.left
        arrowtriangle.left.fill.and.line.vertical.and.arrowtriangle.right.fill
        arrowtriangle.left.and.line.vertical.and.arrowtriangle.right
        arrow.up.and.down.righttriangle.up.fill.righttriangle.down.fill
        arrow.up.and.down.righttriangle.up.righttriangle.down
        arrow.left.and.right.righttriangle.left.righttriangle.right.fill
        arrow.left.and.right.righttriangle.left.righttriangle.right
        skew
        camera.filters
        aspectratio.fill
        aspectratio
        perspective
        purchased.circle.fill
        purchased.circle
        purchased
        paragraphsign
        banknote.fill
        banknote
        hourglass.tophalf.fill
        hourglass.bottomhalf.fill
        hourglass.badge.plus
        hourglass
        studentdesk
        airplane.circle.fill
        airplane.circle
        airplane
        app.gift.fill
        app.gift
        appclip
        app.badge.fill
        app.badge
        arrow.up.forward.app.fill
        arrow.up.forward.app
        arrow.down.app.fill
        arrow.down.app
        plus.app.fill
        plus.app
        gift.circle.fill
        gift.circle
        gift.fill
        gift
        headphones.circle.fill
        headphones.circle
        headphones
        scalemass.fill
        scalemass
        atom
        bonjour
        touchid
        sdcard.fill
        sdcard
        esim.fill
        esim
        simcard.2.fill
        simcard.2
        simcard.fill
        simcard
        staroflife.circle.fill
        staroflife.circle
        staroflife.fill
        staroflife
        waveform.circle.fill
        waveform.circle
        waveform
        waveform.path.badge.minus
        waveform.path.badge.plus
        waveform.path
        waveform.path.ecg.rectangle.fill
        waveform.path.ecg.rectangle
        waveform.path.ecg
        burst.fill
        burst
        squareshape.split.3x3
        squareshape.split.2x2
        squareshape.split.2x2.dotted
        dot.squareshape.split.2x2
        chart.bar.xaxis
        chart.pie.fill
        chart.pie
        chart.bar.fill
        chart.bar
        cylinder.split.1x2.fill
        cylinder.split.1x2
        cylinder.fill
        cylinder
        square.3.stack.3d.bottom.fill
        square.3.stack.3d.middle.fill
        square.3.stack.3d.top.fill
        square.3.stack.3d
        square.2.stack.3d.bottom.fill
        square.2.stack.3d.top.fill
        square.2.stack.3d
        rectangle.and.arrow.up.right.and.arrow.down.left.slash
        rectangle.and.arrow.up.right.and.arrow.down.left
        rectangle.expand.vertical
        rectangle.compress.vertical
        hands.sparkles.fill
        hands.sparkles
        hands.clap.fill
        hands.clap
        hand.wave.fill
        hand.wave
        hand.point.down.fill
        hand.point.down
        hand.point.up.braille.fill
        hand.point.up.braille
        hand.point.up.fill
        hand.point.up
        hand.point.right.fill
        hand.point.right
        hand.point.left.fill
        hand.point.left
        hand.tap.fill
        hand.tap
        hand.draw.fill
        hand.draw
        hand.point.up.left.fill
        hand.point.up.left
        hand.thumbsdown.fill
        hand.thumbsdown
        hand.thumbsup.fill
        hand.thumbsup
        hand.raised.slash.fill
        hand.raised.slash
        hand.raised.fill
        hand.raised
        hearingaid.ear
        ear.fill
        ear.trianglebadge.exclamationmark
        ear.badge.checkmark
        ear
        figure.wave.circle.fill
        figure.wave.circle
        figure.wave
        figure.stand.line.dotted.figure.stand
        figure.stand
        figure.walk.diamond.fill
        figure.walk.diamond
        figure.walk.circle.fill
        figure.walk.circle
        figure.walk
        paintpalette.fill
        paintpalette
        zr.rectangle.roundedtop.fill
        zr.rectangle.roundedtop
        zl.rectangle.roundedtop.fill
        zl.rectangle.roundedtop
        rt.rectangle.roundedtop.fill
        rt.rectangle.roundedtop
        lt.rectangle.roundedtop.fill
        lt.rectangle.roundedtop
        rb.rectangle.roundedbottom.fill
        rb.rectangle.roundedbottom
        lb.rectangle.roundedbottom.fill
        lb.rectangle.roundedbottom
        r2.rectangle.roundedtop.fill
        r2.rectangle.roundedtop
        r1.rectangle.roundedbottom.fill
        r1.rectangle.roundedbottom
        r.rectangle.roundedbottom.fill
        r.rectangle.roundedbottom
        l2.rectangle.roundedtop.fill
        l2.rectangle.roundedtop
        l1.rectangle.roundedbottom.fill
        l1.rectangle.roundedbottom
        l.rectangle.roundedbottom.fill
        l.rectangle.roundedbottom
        rectangle.roundedbottom.fill
        rectangle.roundedbottom
        rectangle.roundedtop.fill
        rectangle.roundedtop
        triangle.circle.fill
        triangle.circle
        square.circle.fill
        square.circle
        circle.circle.fill
        circle.circle
        dpad.down.fill
        dpad.right.fill
        dpad.up.fill
        dpad.left.fill
        dpad.fill
        dpad
        r.joystick.down.fill
        r.joystick.down
        l.joystick.down.fill
        l.joystick.down
        r.joystick.fill
        r.joystick
        l.joystick.fill
        l.joystick
        gamecontroller.fill
        gamecontroller
        clock.arrow.2.circlepath
        exclamationmark.arrow.circlepath
        clock.arrow.circlepath
        timer.square
        timer
        stopwatch.fill
        stopwatch
        alarm.fill
        alarm
        deskclock.fill
        deskclock
        clock.fill
        clock
        helm
        scope
        livephoto.play
        livephoto.badge.a
        livephoto.slash
        livephoto
        square.stack.3d.forward.dottedline.fill
        square.stack.3d.forward.dottedline
        square.stack.3d.up.badge.a.fill
        square.stack.3d.up.badge.a
        square.stack.3d.up.slash.fill
        square.stack.3d.up.slash
        square.stack.3d.up.fill
        square.stack.3d.up
        square.stack.3d.down.forward.fill
        square.stack.3d.down.forward
        square.stack.3d.down.right.fill
        square.stack.3d.down.right
        pyramid.fill
        pyramid
        cone.fill
        cone
        arkit
        shippingbox.fill
        shippingbox
        cube.transparent.fill
        cube.transparent
        cube.fill
        cube
        slider.vertical.3
        slider.horizontal.below.square.fill.and.square
        slider.horizontal.below.rectangle
        slider.horizontal.3
        point.fill.topleft.down.curvedto.point.fill.bottomright.up
        point.topleft.down.curvedto.point.bottomright.up
        switch.2
        shield.checkerboard
        shield.lefthalf.fill.slash
        shield.lefthalf.fill
        shield.slash.fill
        shield.fill
        shield.slash
        shield
        rectangle.connected.to.line.below
        flowchart.fill
        flowchart
        square.and.line.vertical.and.square.fill
        square.fill.and.line.vertical.and.square
        square.fill.and.line.vertical.square.fill
        square.and.line.vertical.and.square
        pano.fill
        pano
        square.stack.fill
        square.stack
        squareshape.controlhandles.on.squareshape.controlhandles
        square.on.square.squareshape.controlhandles
        square.fill.on.circle.fill
        square.on.circle
        plus.square.fill.on.square.fill
        plus.square.on.square
        square.on.square.dashed
        sparkles.square.fill.on.square
        square.fill.on.square
        square.fill.on.square.fill
        square.on.square
        h.square.fill.on.square.fill
        h.square.on.square
        j.square.fill.on.square.fill
        j.square.on.square
        r.square.fill.on.square.fill
        r.square.on.square
        sparkles.rectangle.stack.fill
        sparkles.rectangle.stack
        rectangle.stack.fill.badge.person.crop
        rectangle.stack.badge.person.crop
        rectangle.stack.fill.badge.minus
        rectangle.stack.badge.minus
        rectangle.stack.fill.badge.plus
        rectangle.stack.badge.plus
        rectangle.stack.fill
        rectangle.stack
        photo.on.rectangle.angled
        rectangle.fill.on.rectangle.angled.fill
        rectangle.on.rectangle.angled
        photo.fill.on.rectangle.fill
        photo.on.rectangle
        plus.rectangle.fill.on.rectangle.fill
        plus.rectangle.on.rectangle
        rectangle.fill.on.rectangle.fill.slash.fill
        rectangle.on.rectangle.slash
        rectangle.fill.on.rectangle.fill.circle.fill
        rectangle.fill.on.rectangle.fill.circle
        rectangle.fill.on.rectangle.fill
        rectangle.on.rectangle
        tablecells.badge.ellipsis.fill
        tablecells.badge.ellipsis
        tablecells.fill
        tablecells
        rectangle.split.2x2.fill
        rectangle.split.2x2
        rectangle.split.1x2.fill
        rectangle.split.1x2
        rectangle.split.2x1.fill
        rectangle.split.2x1
        rectangle.split.3x3.fill
        rectangle.split.3x3
        squares.below.rectangle
        mosaic.fill
        mosaic
        square.split.diagonal.fill
        square.split.diagonal
        square.split.diagonal.2x2.fill
        square.split.diagonal.2x2
        square.split.2x2.fill
        square.split.2x2
        square.split.1x2.fill
        square.split.1x2
        square.split.2x1.fill
        square.split.2x1
        rectangle.split.3x1.fill
        rectangle.split.3x1
        uiwindow.split.2x1
        keyboard.macwindow
        text.and.command.macwindow
        macwindow.on.rectangle
        menubar.arrow.down.rectangle
        menubar.arrow.up.rectangle
        menubar.dock.rectangle.badge.record
        menubar.dock.rectangle
        menubar.rectangle
        dock.arrow.down.rectangle
        dock.arrow.up.rectangle
        dock.rectangle
        macwindow.badge.plus
        macwindow
        sidebar.squares.trailing
        sidebar.squares.leading
        sidebar.squares.right
        sidebar.squares.left
        sidebar.trailing
        sidebar.leading
        sidebar.right
        sidebar.left
        rectangle.fill.badge.person.crop
        rectangle.badge.person.crop
        rectangle.fill.badge.xmark
        rectangle.badge.xmark
        rectangle.fill.badge.checkmark
        rectangle.badge.checkmark
        rectangle.fill.badge.minus
        rectangle.badge.minus
        rectangle.fill.badge.plus
        rectangle.badge.plus
        rectangle.dashed.badge.record
        rectangle.dashed
        camera.aperture
        camera.metering.unknown
        camera.metering.spot
        camera.metering.partial
        camera.metering.none
        camera.metering.multispot
        camera.metering.matrix
        camera.metering.center.weighted
        camera.metering.center.weighted.average
        checkerboard.rectangle
        text.below.photo.fill
        text.below.photo
        photo.fill
        photo
        arrow.up.and.person.rectangle.turn.left
        arrow.up.and.person.rectangle.turn.right
        arrow.up.and.person.rectangle.portrait
        person.crop.rectangle.fill
        person.crop.rectangle
        rectangle.righthalf.fill
        rectangle.lefthalf.fill
        rectangle.righthalf.inset.fill.arrow.right
        rectangle.lefthalf.inset.fill.arrow.left
        rectangle.inset.bottomright.fill
        rectangle.inset.bottomleft.fill
        rectangle.inset.topright.fill
        rectangle.inset.topleft.fill
        rectangle.center.inset.fill
        rectangle.rightthird.inset.fill
        rectangle.leftthird.inset.fill
        rectangle.bottomthird.inset.fill
        rectangle.topthird.inset
        rectangle.righthalf.inset.fill
        rectangle.lefthalf.inset.fill
        rectangle.inset.fill
        person.fill.viewfinder
        location.fill.viewfinder
        location.viewfinder
        doc.text.fill.viewfinder
        doc.text.viewfinder
        faceid
        camera.viewfinder
        plus.viewfinder
        qrcode.viewfinder
        barcode.viewfinder
        viewfinder.circle.fill
        viewfinder.circle
        viewfinder
        barcode
        qrcode
        comb.fill
        comb
        crown.fill
        crown
        face.dashed.fill
        face.dashed
        face.smiling.fill
        face.smiling
        sportscourt.fill
        sportscourt
        film.fill
        film
        leaf.arrow.triangle.circlepath
        leaf.fill
        leaf
        ladybug.fill
        ladybug
        ant.circle.fill
        ant.circle
        ant.fill
        ant
        tortoise.fill
        tortoise
        hare.fill
        hare
        cross.circle.fill
        cross.circle
        cross.fill
        cross
        pills.fill
        pills
        lungs.fill
        lungs
        bed.double.fill
        bed.double
        bicycle.circle.fill
        bicycle.circle
        bicycle
        tram.tunnel.fill
        tram.circle.fill
        tram.circle
        tram.fill
        tram
        bus.doubledecker.fill
        bus.doubledecker
        bus.fill
        bus
        car.2.fill
        car.2
        bolt.car.fill
        bolt.car
        car.circle.fill
        car.circle
        car.fill
        car
        guitars.fill
        guitars
        rectangle.portrait.arrowtriangle.2.inward
        rectangle.portrait.arrowtriangle.2.outward
        rectangle.arrowtriangle.2.inward
        rectangle.arrowtriangle.2.outward
        pip.remove
        pip.swap
        pip.enter
        pip.exit
        pip.fill
        pip
        antenna.radiowaves.left.and.right
        wave.3.forward.circle.fill
        wave.3.forward.circle
        wave.3.forward
        wave.3.right.circle.fill
        wave.3.right.circle
        wave.3.right
        wave.3.backward.circle.fill
        wave.3.backward.circle
        wave.3.backward
        wave.3.left.circle.fill
        wave.3.left.circle
        wave.3.left
        dot.radiowaves.forward
        dot.radiowaves.right
        dot.radiowaves.left.and.right
        airplayaudio
        airplayvideo
        signpost.right.fill
        signpost.right
        signpost.left.fill
        signpost.left
        appletv.fill
        appletv
        radio.fill
        radio
        hifispeaker.2.fill
        hifispeaker.2
        hifispeaker.fill
        hifispeaker
        hifispeaker.and.homepod.fill
        hifispeaker.and.homepod
        homepod.2.fill
        homepod.2
        homepod.fill
        homepod
        airpodpro.left
        airpodpro.right
        airpodspro
        airpod.left
        airpod.right
        airpods
        earpods
        applewatch.slash
        applewatch.radiowaves.left.and.right
        lock.applewatch
        exclamationmark.applewatch
        applewatch.watchface
        applewatch
        apps.ipad.landscape
        ipad.landscape
        ipad.homebutton.landscape
        apps.ipad
        ipad
        ipad.homebutton
        ipodshuffle.gen4
        ipodshuffle.gen3
        ipodshuffle.gen2
        ipodshuffle.gen1
        ipodtouch.landscape
        ipodtouch
        apps.iphone.landscape
        apps.iphone.badge.plus
        apps.iphone
        arrow.turn.up.forward.iphone.fill
        arrow.turn.up.forward.iphone
        ipad.landscape.badge.play
        ipad.homebutton.landscape.badge.play
        ipad.badge.play
        ipad.homebutton.badge.play
        iphone.badge.play
        iphone.homebutton.badge.play
        iphone.slash
        iphone.radiowaves.left.and.right
        iphone.landscape
        iphone
        iphone.homebutton.slash
        iphone.homebutton.radiowaves.left.and.right
        iphone.homebutton.landscape
        iphone.homebutton
        candybarphone
        flipphone
        ipod
        airport.extreme
        airport.extreme.tower
        airport.express
        macmini.fill
        macmini
        laptopcomputer.and.iphone
        laptopcomputer
        macpro.gen3.server
        xserve
        server.rack
        macpro.gen3
        macpro.gen2.fill
        macpro.gen2
        macpro.gen1
        pc
        desktopcomputer
        display.2
        display.trianglebadge.exclamationmark
        display
        tv.and.mediabox
        tv.and.hifispeaker.fill
        photo.tv
        play.tv.fill
        play.tv
        tv.music.note.fill
        tv.music.note
        4k.tv.fill
        4k.tv
        tv.circle.fill
        tv.circle
        tv.fill
        tv
        opticaldisc
        memorychip
        cpu
        timeline.selection
        selection.pin.in.out
        rotate.right.fill
        rotate.right
        rotate.left.fill
        rotate.left
        torus
        rotate.3d
        scale.3d
        move.3d
        safari.fill
        safari
        map.fill
        map
        mappin.and.ellipse
        mappin.slash
        mappin.circle.fill
        mappin.circle
        mappin
        pin.slash.fill
        pin.slash
        pin.circle.fill
        pin.circle
        pin.fill
        pin
        wifi.exclamationmark
        wifi.slash
        wifi
        key.fill
        key
        lock.rotation.open
        lock.rotation
        lock.open.fill
        lock.open
        lock.slash.fill
        lock.slash
        lock.shield.fill
        lock.shield
        lock.rectangle.on.rectangle.fill
        lock.rectangle.on.rectangle
        lock.rectangle.stack.fill
        lock.rectangle.stack
        lock.rectangle.fill
        lock.rectangle
        lock.square.stack.fill
        lock.square.stack
        lock.square.fill
        lock.square
        lock.circle.fill
        lock.circle
        lock.fill
        lock
        building.2.crop.circle.fill
        building.2.crop.circle
        building.2.fill
        building.2
        building.fill
        building
        square.split.bottomrightquarter.fill
        square.split.bottomrightquarter
        building.columns.fill
        building.columns
        music.note.house.fill
        music.note.house
        house.circle.fill
        house.circle
        house.fill
        house
        homekit
        puzzlepiece.fill
        puzzlepiece
        cross.case.fill
        cross.case
        latch.2.case.fill
        latch.2.case
        case.fill
        case
        briefcase.fill
        briefcase
        faxmachine
        scanner.fill
        scanner
        printer.dotmatrix.fill.and.paper.fill
        printer.dotmatrix.fill
        printer.dotmatrix
        printer.fill.and.paper.fill
        printer.fill
        printer
        stethoscope
        scroll.fill
        scroll
        applescript.fill
        applescript
        wrench.and.screwdriver.fill
        wrench.and.screwdriver
        eyedropper.full
        eyedropper.halffull
        eyedropper
        hammer.fill
        hammer
        wrench.fill
        wrench
        level.fill
        level
        ruler.fill
        ruler
        bandage.fill
        bandage
        paintbrush.pointed.fill
        paintbrush.pointed
        paintbrush.fill
        paintbrush
        tuningfork
        pianokeys.inverse
        pianokeys
        square.grid.3x3.fill.square
        die.face.6.fill
        die.face.6
        die.face.5.fill
        die.face.5
        die.face.4.fill
        die.face.4
        die.face.3.fill
        die.face.3
        die.face.2.fill
        die.face.2
        die.face.1.fill
        die.face.1
        amplifier
        metronome.fill
        metronome
        barometer
        speedometer
        gauge.badge.minus
        gauge.badge.plus
        gauge
        nosign
        gyroscope
        dial.max.fill
        dial.max
        dial.min.fill
        dial.min
        crop.rotate
        crop
        wand.and.stars.inverse
        wand.and.stars
        wand.and.rays.inverse
        wand.and.rays
        wallet.pass.fill
        wallet.pass
        giftcard.fill
        giftcard
        creditcard.circle.fill
        creditcard.circle
        creditcard.fill
        creditcard
        cart.fill.badge.minus
        cart.badge.minus
        cart.fill.badge.plus
        cart.badge.plus
        cart.circle.fill
        cart.circle
        cart.fill
        cart
        bag.fill.badge.minus
        bag.badge.minus
        bag.fill.badge.plus
        bag.badge.plus
        bag.circle.fill
        bag.circle
        bag.fill
        bag
        ellipsis.rectangle.fill
        ellipsis.rectangle
        ellipsis.circle.fill
        ellipsis.circle
        ellipsis
        scissors.badge.ellipsis
        scissors
        line.3.crossed.swirl.circle.fill
        line.3.crossed.swirl.circle
        signature
        gearshape.2.fill
        gearshape.2
        gearshape.fill
        gearshape
        gear
        arrow.up.right.and.arrow.down.left.rectangle.fill
        arrow.up.right.and.arrow.down.left.rectangle
        rectangle.and.text.magnifyingglass
        mail.and.text.magnifyingglass
        mail.fill
        mail
        mail.stack.fill
        mail.stack
        envelope.fill.badge.shield.trailinghalf.fill
        envelope.badge.shield.leadinghalf.fill
        envelope.badge.fill
        envelope.badge
        envelope.open.fill
        envelope.open
        envelope.arrow.triangle.branch.fill
        envelope.arrow.triangle.branch
        envelope.circle.fill
        envelope.circle
        envelope.fill
        envelope
        questionmark.video.fill
        questionmark.video
        arrow.down.left.video.fill
        arrow.down.left.video
        arrow.up.right.video.fill
        arrow.up.right.video
        video.fill.badge.checkmark
        video.badge.checkmark
        video.fill.badge.plus
        video.badge.plus
        video.slash.fill
        video.slash
        video.circle.fill
        video.circle
        video.fill
        video
        teletype.answer
        teletype.circle.fill
        teletype.circle
        teletype
        phone.down.circle.fill
        phone.down.circle
        phone.down.fill
        phone.down
        phone.fill.arrow.right
        phone.arrow.right
        phone.fill.arrow.down.left
        phone.arrow.down.left
        phone.fill.arrow.up.right
        phone.arrow.up.right
        phone.fill.connection
        phone.connection
        phone.fill.badge.plus
        phone.badge.plus
        phone.circle.fill
        phone.circle
        phone.fill
        phone
        bubble.left.and.bubble.right.fill
        bubble.left.and.bubble.right
        bubble.middle.top.fill
        bubble.middle.top
        bubble.middle.bottom.fill
        bubble.middle.bottom
        video.bubble.left.fill
        video.bubble.left
        phone.bubble.left.fill
        phone.bubble.left
        ellipsis.bubble.fill
        ellipsis.bubble
        rectangle.3.offgrid.bubble.left.fill
        rectangle.3.offgrid.bubble.left
        plus.bubble.fill
        plus.bubble
        captions.bubble.fill
        captions.bubble
        text.bubble.fill
        text.bubble
        t.bubble.fill
        t.bubble
        quote.bubble.fill
        quote.bubble
        exclamationmark.bubble.fill
        exclamationmark.bubble
        bubble.left.fill
        bubble.left
        bubble.right.fill
        bubble.right
        plus.message.fill
        plus.message
        arrow.up.message.fill
        arrow.up.message
        message.circle.fill
        message.circle
        message.fill
        message
        camera.on.rectangle.fill
        camera.on.rectangle
        arrow.triangle.2.circlepath.camera.fill
        arrow.triangle.2.circlepath.camera
        camera.fill.badge.ellipsis
        camera.badge.ellipsis
        camera.circle.fill
        camera.circle
        camera.fill
        camera
        flashlight.on.fill
        flashlight.off.fill
        icloud.and.arrow.up.fill
        icloud.and.arrow.up
        icloud.and.arrow.down.fill
        icloud.and.arrow.down
        arrow.counterclockwise.icloud.fill
        arrow.counterclockwise.icloud
        arrow.clockwise.icloud.fill
        arrow.clockwise.icloud
        key.icloud.fill
        key.icloud
        lock.icloud.fill
        lock.icloud
        person.icloud.fill
        person.icloud
        bolt.horizontal.icloud.fill
        bolt.horizontal.icloud
        link.icloud.fill
        link.icloud
        xmark.icloud.fill
        xmark.icloud
        checkmark.icloud.fill
        checkmark.icloud
        exclamationmark.icloud.fill
        exclamationmark.icloud
        icloud.slash.fill
        icloud.slash
        icloud.circle.fill
        icloud.circle
        icloud.fill
        icloud
        mouth.fill
        mouth
        mustache.fill
        mustache
        nose.fill
        nose
        eyebrow
        eyes.inverse
        eyes
        eye.slash.fill
        eye.slash
        eye.circle.fill
        eye.circle
        eye.fill
        eye
        bolt.horizontal.circle.fill
        bolt.horizontal.circle
        bolt.horizontal.fill
        bolt.horizontal
        bolt.badge.a.fill
        bolt.badge.a
        bolt.slash.circle.fill
        bolt.slash.circle
        bolt.slash.fill
        bolt.slash
        bolt.circle.fill
        bolt.circle
        bolt.fill
        bolt
        tag.slash.fill
        tag.slash
        tag.circle.fill
        tag.circle
        tag.fill
        tag
        bell.badge.fill
        bell.badge
        bell.slash.circle.fill
        bell.slash.circle
        bell.slash.fill
        bell.slash
        bell.circle.fill
        bell.circle
        bell.fill
        bell
        location.north.line.fill
        location.north.line
        location.circle.fill
        location.circle
        location.north.fill
        location.north
        location.slash.fill
        location.slash
        location.fill
        location
        flag.badge.ellipsis.fill
        flag.badge.ellipsis
        flag.slash.circle.fill
        flag.slash.circle
        flag.slash.fill
        flag.slash
        flag.circle.fill
        flag.circle
        flag.fill
        flag
        line.horizontal.star.fill.line.horizontal
        star.slash.fill
        star.slash
        star.square.fill
        star.square
        star.circle.fill
        star.circle
        star.leadinghalf.fill
        star.fill
        star
        rhombus.fill
        rhombus
        arrow.clockwise.heart.fill
        arrow.clockwise.heart
        arrow.down.heart.fill
        arrow.down.heart
        arrow.up.heart.fill
        arrow.up.heart
        bolt.heart.fill
        bolt.heart
        heart.text.square.fill
        heart.text.square
        heart.slash.circle.fill
        heart.slash.circle
        heart.slash.fill
        heart.slash
        heart.circle.fill
        heart.circle
        heart.fill
        heart
        suit.diamond.fill
        suit.diamond
        suit.spade.fill
        suit.spade
        suit.club.fill
        suit.club
        suit.heart.fill
        suit.heart
        hexagon.fill
        hexagon
        octagon.fill
        octagon
        diamond.fill
        diamond
        triangle.righthalf.fill
        triangle.lefthalf.fill
        triangle.fill
        triangle
        rectangle.portrait.fill
        rectangle.portrait
        rectangle.slash.fill
        rectangle.slash
        rectangle.fill
        rectangle
        app.fill
        app
        dot.squareshape.fill
        dot.squareshape
        squareshape.squareshape.dashed
        squareshape.dashed.squareshape
        squareshape.fill
        squareshape
        questionmark.square.dashed
        square.dashed.inset.fill
        square.dashed
        circle.fill.square.fill
        circle.square
        dot.square.fill
        dot.square
        square.slash.fill
        square.slash
        square.tophalf.fill
        square.bottomhalf.fill
        square.righthalf.fill
        square.lefthalf.fill
        square.fill
        square
        placeholdertext.fill
        oval.portrait.fill
        oval.portrait
        oval.fill
        oval
        capsule.portrait.fill
        capsule.portrait
        capsule.fill
        capsule
        target
        smallcircle.circle.fill
        smallcircle.circle
        circlebadge.2.fill
        circlebadge.2
        circlebadge.fill
        circlebadge
        circle.dashed.inset.fill
        circle.dashed
        smallcircle.fill.circle.fill
        smallcircle.fill.circle
        largecircle.fill.circle
        circle.tophalf.fill
        circle.bottomhalf.fill
        circle.righthalf.fill
        circle.lefthalf.fill
        circle.fill
        circle
        line.diagonal.arrow
        line.diagonal
        mic.slash.fill
        mic.slash
        mic.circle.fill
        mic.circle
        mic.fill
        mic
        loupe
        text.magnifyingglass
        arrow.up.left.and.down.right.magnifyingglass
        1.magnifyingglass
        minus.magnifyingglass
        plus.magnifyingglass
        magnifyingglass.circle.fill
        magnifyingglass.circle
        magnifyingglass
        swift
        gobackward.minus
        goforward.plus
        gobackward.90
        goforward.90
        gobackward.75
        goforward.75
        gobackward.60
        goforward.60
        gobackward.45
        goforward.45
        gobackward.30
        goforward.30
        gobackward.15
        goforward.15
        gobackward.10
        goforward.10
        gobackward
        goforward
        arrow.rectanglepath
        music.mic
        music.quarternote.3
        music.note.list
        music.note
        badge.plus.radiowaves.forward
        badge.plus.radiowaves.right
        speaker.wave.3.fill
        speaker.wave.3
        speaker.wave.2.circle.fill
        speaker.wave.2.circle
        speaker.wave.2.fill
        speaker.wave.2
        speaker.wave.1.fill
        speaker.wave.1
        speaker.zzz.fill
        speaker.zzz
        speaker.slash.circle.fill
        speaker.slash.circle
        speaker.slash.fill
        speaker.slash
        speaker.fill
        speaker
        megaphone.fill
        megaphone
        infinity.circle.fill
        infinity.circle
        infinity
        repeat.1.circle.fill
        repeat.1.circle
        repeat.1
        repeat.circle.fill
        repeat.circle
        repeat
        shuffle.circle.fill
        shuffle.circle
        shuffle
        memories.badge.minus
        memories.badge.plus
        memories
        mount.fill
        mount
        eject.circle.fill
        eject.circle
        eject.fill
        eject
        forward.frame.fill
        forward.frame
        backward.frame.fill
        backward.frame
        forward.end.alt.fill
        forward.end.alt
        backward.end.alt.fill
        backward.end.alt
        forward.end.fill
        forward.end
        backward.end.fill
        backward.end
        forward.fill
        forward
        backward.fill
        backward
        playpause.fill
        playpause
        record.circle.fill
        record.circle
        stop.circle.fill
        stop.circle
        stop.fill
        stop
        pause.rectangle.fill
        pause.rectangle
        pause.circle.fill
        pause.circle
        pause.fill
        pause
        play.slash.fill
        play.slash
        play.rectangle.fill
        play.rectangle
        play.circle.fill
        play.circle
        play.fill
        play
        drop.triangle.fill
        drop.triangle
        drop.fill
        drop
        exclamationmark.triangle.fill
        exclamationmark.triangle
        xmark.seal.fill
        xmark.seal
        checkmark.seal.fill
        checkmark.seal
        seal.fill
        seal
        circle.grid.cross.down.fill
        circle.grid.cross.right.fill
        circle.grid.cross.up.fill
        circle.grid.cross.left.fill
        circle.grid.cross.fill
        circle.grid.cross
        circles.hexagonpath.fill
        circles.hexagonpath
        circles.hexagongrid.fill
        circles.hexagongrid
        square.grid.3x3.bottomright.fill
        square.grid.3x3.bottommiddle.fill
        square.grid.3x3.bottomleft.fill
        square.grid.3x3.middleright.fill
        square.grid.3x3.middle.fill
        square.grid.3x3.middleleft.fill
        square.grid.3x3.topright.fill
        square.grid.3x3.topmiddle.fill
        square.grid.3x3.topleft.fill
        square.grid.3x3.fill
        square.grid.3x3
        circle.grid.3x3.fill
        circle.grid.3x3
        circle.grid.2x2.fill
        circle.grid.2x2
        rectangle.grid.1x2.fill
        rectangle.grid.1x2
        square.grid.4x3.fill
        square.grid.3x1.fill.below.line.grid.1x2
        square.grid.3x1.below.line.grid.1x2
        rectangle.grid.2x2.fill
        rectangle.grid.2x2
        square.grid.2x2.fill
        square.grid.2x2
        rectangle.grid.3x2.fill
        rectangle.grid.3x2
        square.grid.3x2.fill
        square.grid.3x2
        rectangle.3.offgrid.fill
        rectangle.3.offgrid
        keyboard.onehanded.right
        keyboard.onehanded.left
        keyboard.chevron.compact.left
        keyboard.chevron.compact.down
        keyboard.badge.ellipsis
        keyboard
        cursorarrow.click.badge.clock
        cursorarrow.motionlines.click
        cursorarrow.motionlines
        dot.circle.and.cursorarrow
        filemenu.and.selection
        filemenu.and.cursorarrow
        contextualmenu.and.cursorarrow
        cursorarrow.click.2
        cursorarrow.click
        cursorarrow.and.square.on.square.dashed
        cursorarrow.square
        cursorarrow
        cursorarrow.rays
        timelapse
        slowmo
        rays
        light.max
        light.min
        flame.fill
        flame
        umbrella.fill
        umbrella
        aqi.high
        aqi.medium
        aqi.low
        thermometer
        thermometer.snowflake
        thermometer.sun.fill
        thermometer.sun
        hurricane
        tropicalstorm
        tornado
        snow
        wind.snow
        wind
        smoke.fill
        smoke
        cloud.moon.bolt.fill
        cloud.moon.bolt
        cloud.moon.rain.fill
        cloud.moon.rain
        cloud.moon.fill
        cloud.moon
        cloud.sun.bolt.fill
        cloud.sun.bolt
        cloud.sun.rain.fill
        cloud.sun.rain
        cloud.sun.fill
        cloud.sun
        cloud.bolt.rain.fill
        cloud.bolt.rain
        cloud.bolt.fill
        cloud.bolt
        cloud.sleet.fill
        cloud.sleet
        cloud.snow.fill
        cloud.snow
        cloud.hail.fill
        cloud.hail
        cloud.fog.fill
        cloud.fog
        cloud.heavyrain.fill
        cloud.heavyrain
        cloud.rain.fill
        cloud.rain
        cloud.drizzle.fill
        cloud.drizzle
        cloud.fill
        cloud
        moon.stars.fill
        moon.stars
        sparkles
        sparkle
        moon.zzz.fill
        moon.zzz
        zzz
        moon.circle.fill
        moon.circle
        moon.fill
        moon
        sun.haze.fill
        sun.haze
        sun.dust.fill
        sun.dust
        sunset.fill
        sunset
        sunrise.fill
        sunrise
        sun.max.fill
        sun.max
        sun.min.fill
        sun.min
        network
        globe
        dot.arrowtriangles.up.right.down.left.circle
        directcurrent
        powersleep
        poweroff
        poweron
        togglepower
        power
        wake
        sleep
        restart.circle
        restart
        escape
        capslock.fill
        capslock
        shift.fill
        shift
        delete.left.fill
        delete.left
        clear.fill
        clear
        delete.right.fill
        delete.right
        alt
        option
        command.square.fill
        command.square
        command.circle.fill
        command.circle
        command
        square.and.at.rectangle
        person.crop.square.fill.and.at.rectangle
        person.2.square.stack.fill
        person.2.square.stack
        rectangle.stack.person.crop.fill
        rectangle.stack.person.crop
        person.crop.square.fill
        person.crop.square
        person.crop.circle.fill.badge.exclamationmark
        person.crop.circle.badge.exclamationmark
        person.crop.circle.fill.badge.questionmark
        person.crop.circle.badge.questionmark
        person.crop.circle.fill.badge.xmark
        person.crop.circle.badge.xmark
        person.crop.circle.fill.badge.checkmark
        person.crop.circle.badge.checkmark
        person.crop.circle.fill.badge.minus
        person.crop.circle.badge.minus
        person.crop.circle.fill.badge.plus
        person.crop.circle.badge.plus
        person.crop.circle.fill
        person.crop.circle
        person.3.fill
        person.3
        person.2.circle.fill
        person.2.circle
        person.2.fill
        person.2
        person.fill.and.arrow.left.and.arrow.right
        person.and.arrow.left.and.arrow.right
        person.fill.badge.minus
        person.badge.minus
        person.fill.badge.plus
        person.badge.plus
        person.circle.fill
        person.circle
        person.fill.questionmark
        person.fill.xmark
        person.fill.checkmark
        person.fill.turn.left
        person.fill.turn.down
        person.fill.turn.right
        person.fill
        person
        lineweight
        personalhotspot
        link.badge.plus
        link.circle.fill
        link.circle
        link
        rectangle.dashed.and.paperclip
        rectangle.and.paperclip
        paperclip.badge.ellipsis
        paperclip.circle.fill
        paperclip.circle
        paperclip
        ticket.fill
        ticket
        graduationcap.fill
        graduationcap
        rosette
        bookmark.slash.fill
        bookmark.slash
        bookmark.circle.fill
        bookmark.circle
        bookmark.fill
        bookmark
        greetingcard.fill
        greetingcard
        text.book.closed.fill
        text.book.closed
        character.book.closed.fill
        character.book.closed
        book.closed.fill
        book.closed
        books.vertical.fill
        books.vertical
        newspaper.fill
        newspaper
        book.circle.fill
        book.circle
        book.fill
        book
        arrowshape.bounce.forward.fill
        arrowshape.bounce.forward
        arrowshape.bounce.right.fill
        arrowshape.bounce.right
        arrowshape.zigzag.forward.fill
        arrowshape.zigzag.forward
        arrowshape.zigzag.right.fill
        arrowshape.zigzag.right
        arrowshape.turn.up.backward.2.circle.fill
        arrowshape.turn.up.backward.2.circle
        arrowshape.turn.up.backward.2.fill
        arrowshape.turn.up.backward.2
        arrowshape.turn.up.left.2.circle.fill
        arrowshape.turn.up.left.2.circle
        arrowshape.turn.up.left.2.fill
        arrowshape.turn.up.left.2
        arrowshape.turn.up.forward.circle.fill
        arrowshape.turn.up.forward.circle
        arrowshape.turn.up.forward.fill
        arrowshape.turn.up.forward
        arrowshape.turn.up.right.circle.fill
        arrowshape.turn.up.right.circle
        arrowshape.turn.up.right.fill
        arrowshape.turn.up.right
        arrowshape.turn.up.backward.circle.fill
        arrowshape.turn.up.backward.circle
        arrowshape.turn.up.backward.fill
        arrowshape.turn.up.backward
        arrowshape.turn.up.left.circle.fill
        arrowshape.turn.up.left.circle
        arrowshape.turn.up.left.fill
        arrowshape.turn.up.left
        calendar.badge.exclamationmark
        calendar.badge.clock
        calendar.badge.minus
        calendar.badge.plus
        calendar.circle.fill
        calendar.circle
        calendar
        note.text.badge.plus
        note.text
        note
        doc.text.magnifyingglass
        terminal.fill
        terminal
        list.bullet.rectangle
        chart.bar.doc.horizontal.fill
        chart.bar.doc.horizontal
        doc.text.below.ecg.fill
        doc.text.below.ecg
        doc.append.fill
        doc.append
        doc.plaintext.fill
        doc.plaintext
        doc.richtext.fill
        doc.richtext
        doc.on.clipboard.fill
        arrow.triangle.2.circlepath.doc.on.clipboard
        arrow.up.doc.on.clipboard
        arrow.right.doc.on.clipboard
        doc.on.clipboard
        doc.on.doc.fill
        doc.on.doc
        doc.zipper
        doc.text.fill
        doc.text
        arrow.down.doc.fill
        arrow.down.doc
        arrow.up.doc.fill
        arrow.up.doc
        lock.doc.fill
        lock.doc
        doc.fill.badge.ellipsis
        doc.badge.ellipsis
        doc.badge.gearshape.fill
        doc.badge.gearshape
        doc.fill.badge.plus
        doc.badge.plus
        doc.circle.fill
        doc.circle
        doc.fill
        doc
        arrow.up.bin.fill
        arrow.up.bin
        xmark.bin.circle.fill
        xmark.bin.circle
        xmark.bin.fill
        xmark.bin
        archivebox.circle.fill
        archivebox.circle
        archivebox.fill
        archivebox
        externaldrive.connected.to.line.below.fill
        externaldrive.connected.to.line.below
        opticaldiscdrive.fill
        opticaldiscdrive
        internaldrive.fill
        internaldrive
        externaldrive.fill.badge.timemachine
        externaldrive.badge.timemachine
        externaldrive.fill.badge.wifi
        externaldrive.badge.wifi
        externaldrive.fill.badge.icloud
        externaldrive.badge.icloud
        externaldrive.fill.badge.person.crop
        externaldrive.badge.person.crop
        externaldrive.fill.badge.xmark
        externaldrive.badge.xmark
        externaldrive.fill.badge.checkmark
        externaldrive.badge.checkmark
        externaldrive.fill.badge.minus
        externaldrive.badge.minus
        externaldrive.fill.badge.plus
        externaldrive.badge.plus
        externaldrive.fill
        externaldrive
        tray.full.fill
        tray.full
        tray.2.fill
        tray.2
        tray.and.arrow.down.fill
        tray.and.arrow.down
        tray.and.arrow.up.fill
        tray.and.arrow.up
        tray.circle.fill
        tray.circle
        tray.fill
        tray
        paperplane.circle.fill
        paperplane.circle
        paperplane.fill
        paperplane
        questionmark.folder.fill
        questionmark.folder
        plus.rectangle.fill.on.folder.fill
        plus.rectangle.on.folder
        folder.fill.badge.gear
        folder.badge.gear
        square.grid.3x1.folder.fill.badge.plus
        square.grid.3x1.folder.badge.plus
        folder.fill.badge.person.crop
        folder.badge.person.crop
        folder.fill.badge.questionmark
        folder.badge.questionmark
        folder.fill.badge.minus
        folder.badge.minus
        folder.fill.badge.plus
        folder.badge.plus
        folder.circle.fill
        folder.circle
        folder.fill
        folder
        trash.slash.fill
        trash.slash
        trash.circle.fill
        trash.circle
        trash.fill
        trash
        lasso.sparkles
        lasso
        pencil.tip.crop.circle.badge.arrow.forward
        pencil.tip.crop.circle.badge.minus
        pencil.tip.crop.circle.badge.plus
        pencil.tip.crop.circle
        pencil.tip
        pencil.and.outline
        highlighter
        scribble.variable
        scribble
        rectangle.and.pencil.and.ellipsis
        square.and.pencil
        pencil.slash
        pencil.circle.fill
        pencil.circle
        pencil
        square.and.arrow.down.on.square.fill
        square.and.arrow.down.on.square
        square.and.arrow.up.on.square.fill
        square.and.arrow.up.on.square
        square.and.arrow.down.fill
        square.and.arrow.down
        square.and.arrow.up.fill
        square.and.arrow.up
        """
}

