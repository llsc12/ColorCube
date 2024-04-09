//
//  facts.swift
//
//
//  Created by Lakhan Lothiyi on 09/04/2024.
//

@_exported import ColorCubeObjc

extension CCFlags: OptionSet {
  static let onlyBrightColors = CCOnlyBrightColors
  static let onlyDarkColors = CCOnlyDarkColors
  static let onlyDistinctColors = CCOnlyDistinctColors
  static let orderByBrightness = CCOrderByBrightness
  static let orderByDarkness = CCOrderByDarkness
  static let avoidWhite = CCAvoidWhite
  static let avoidBlack = CCAvoidBlack
}
